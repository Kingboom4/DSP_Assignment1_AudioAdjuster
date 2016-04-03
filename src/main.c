/**************************************************************************************************
* @file		Projects\AudioAdjuster\src\main.c
*
* Summary:
*         	main function for the audio adjuster project
*
* ToDo:
*     		none
*
* Originator:
*     		Andy Watt
*
* History:
* 			Version 1.00	20/04/2013	Andy Watt	Initial Version copied from Microchip Demo Project and modified 
*      		Version 1.01    28/04/2013	Andy Watt	Added filter and modulate function calls 
*      		Version 1.02    01/05/2013	Andy Watt	Added mode switching and low pass filter function calls 
*      		Version 1.03	07/05/2013	Andy Watt	Added transform function calls
*
***************************************************************************************************/
#include <p33FJ256GP506.h>
#include <board\h\sask.h>
#include <board\inc\ex_sask_generic.h>
#include <board\inc\ex_sask_led.h>
#include <dsp\h\dsp.h>
#include <peripherals\adc\h\ADCChannelDrv.h>
#include <peripherals\pwm\h\OCPWMDrv.h>

#include "..\inc\filter.h"
#include "..\inc\modulate.h"
#include "..\inc\complexmultiply.h"
#include "..\inc\transform.h"
#include "..\inc\LED_Display.h"

//#define __DEBUG_OVERRIDE_INPUT
//#define __DEBUG_FILTERS
//#define __DEBUG_SHIFTERS
//#define __DEBUG_TRANSFORMS

#define FRAME_SIZE 				256

//Allocate memory for input and output buffers
fractional		adcBuffer		[ADC_CHANNEL_DMA_BUFSIZE] 	__attribute__((space(dma)));
fractional		ocPWMBuffer		[OCPWM_DMA_BUFSIZE]		__attribute__((space(dma)));

//variables for FFT
fractcomplex compx[FRAME_SIZE]__attribute__ ((space(ymemory),far));
fractcomplex compX[FRAME_SIZE]__attribute__ ((space(ymemory),far));
fractcomplex compXfiltered[FRAME_SIZE]__attribute__ ((space(ymemory),far));

//variables for audio processing
fractional		frctAudioIn			[FRAME_SIZE]__attribute__ ((space(xmemory),far));
fractional		frctAudioOut		[FRAME_SIZE]__attribute__ ((space(xmemory),far));

int peakFrequencyBin=0;

//Instantiate the drivers
ADCChannelHandle adcChannelHandle;
OCPWMHandle 	ocPWMHandle;

//Create the driver handles
ADCChannelHandle *pADCChannelHandle 	= &adcChannelHandle;
OCPWMHandle 	*pOCPWMHandle 		= &ocPWMHandle;

int main(void)
{
//	initFilter();

	ex_sask_init( );

	//Initialise Audio input and output function
	ADCChannelInit	(pADCChannelHandle,adcBuffer);			
	OCPWMInit		(pOCPWMHandle,ocPWMBuffer);			

	//Start Audio input and output function
	ADCChannelStart	(pADCChannelHandle);
	OCPWMStart		(pOCPWMHandle);	
	
	int peakFrequency = 0;
	while(1)
	{		
		#ifndef __DEBUG_OVERRIDE_INPUT//if not in debug mode, read audio in from the ADC
			//Wait till the ADC has a new frame available
			while(ADCChannelIsBusy(pADCChannelHandle));
			//Read in the Audio Samples from the ADC
			ADCChannelRead	(pADCChannelHandle,frctAudioIn,FRAME_SIZE);
		#endif

				//work in the frequency domain

				fourierTransform(FRAME_SIZE,compX,frctAudioIn);
				filterNegativeFreq(FRAME_SIZE,compXfiltered,compX);
//				shiftFreqSpectrum(FRAME_SIZE,iShiftAmount,compXshifted,compXfiltered);
				
	
	//Might need to rethink dividing by 2 for FRAME_SIZE

	SquareMagnitudeCplx(FRAME_SIZE/2, &compXfiltered[0], &compXfiltered[0].real);

	/* Find the frequency Bin ( = index into the SigCmpx[] array) that has the largest energy*/
	/* i.e., the largest spectral component */
	VectorMax(FRAME_SIZE/2, &compXfiltered[0].real, &peakFrequencyBin);

	/* Compute the frequency (in Hz) of the largest spectral component */
	peakFrequency = peakFrequencyBin*(8000/FRAME_SIZE);				
	
	/* Uses the peak frequency variable to turn on the corresponding LEDs*/
	turnOnLEDs(peakFrequency);

//				inverseFourierTransform(FRAME_SIZE,frctAudioOut,compXshifted);
						
		
		//Wait till the OC is available for a new frame
		//Write the real part of the frequency shifted complex audio signal to the output
		
	}
}