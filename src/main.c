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

//#define __DEBUG_OVERRIDE_INPUT
//#define __DEBUG_FILTERS
//#define __DEBUG_SHIFTERS
//#define __DEBUG_TRANSFORMS

#define FRAME_SIZE 				128
#define UPPER_CARRIER_FREQ 		625	
#define LOWER_CARRIER_FREQ 		62.5
#define CARRIER_INC				62.5
#define CARRIER_DEC				62.5
#define PRESSED					1
#define UNPRESSED				0

//Modes are used to change the way the device does things, pressing switch 1 changes the mode
#define MODE_DO_NOTHING			0 //the device passes the audio straight through to the output
#define MODE_BAND_PASS_FILTER	1 //the device uses the band pass filter to remove negative audio frequencies
#define MODE_BAND_PASS_SHIFT	3 //the device band pass filters and shifts the audio frequencies
#define MODE_LOW_PASS_FILTER	2 //the device uses the shifted low pass filter to remove negative audio frequencies
#define MODE_LOW_PASS_SHIFT		4 //the device uses shifted low pass filters and shifts the audio frequencies
#define MODE_FREQ_DOMAIN		5 //the device works on the audio signal in the frequency domain
#define MODE_TOTAL				6

//Allocate memory for input and output buffers
fractional		adcBuffer		[ADC_CHANNEL_DMA_BUFSIZE] 	__attribute__((space(dma)));
fractional		ocPWMBuffer		[OCPWM_DMA_BUFSIZE]		__attribute__((space(dma)));

//variables for FFT
fractcomplex compx[FRAME_SIZE]__attribute__ ((space(ymemory),far));
fractcomplex compX[FRAME_SIZE]__attribute__ ((space(ymemory),far));
fractcomplex compXfiltered[FRAME_SIZE]__attribute__ ((space(ymemory),far));
fractcomplex compXshifted[FRAME_SIZE]__attribute__ ((space(ymemory),far));

//variables for audio processing
fractional		frctAudioIn			[FRAME_SIZE]__attribute__ ((space(xmemory),far));
fractional		frctAudioWorkSpace	[FRAME_SIZE]__attribute__ ((space(ymemory),far));
fractional		frctAudioOut		[FRAME_SIZE]__attribute__ ((space(xmemory),far));
fractcomplex	compAudioOut		[FRAME_SIZE]__attribute__ ((space(xmemory),far));
fractcomplex	compCarrierSignal	[FRAME_SIZE]__attribute__ ((space(ymemory),far));

//Instantiate the drivers
ADCChannelHandle adcChannelHandle;
OCPWMHandle 	ocPWMHandle;

//Create the driver handles
ADCChannelHandle *pADCChannelHandle 	= &adcChannelHandle;
OCPWMHandle 	*pOCPWMHandle 		= &ocPWMHandle;

int main(void)
{
	initFilter();
	
	ex_sask_init();
	
	//Initialise Audio input and output function
	ADCChannelInit	(pADCChannelHandle,adcBuffer);			
	OCPWMInit		(pOCPWMHandle,ocPWMBuffer);			
	
	//Start Audio input and output function
	ADCChannelStart	(pADCChannelHandle);
	OCPWMStart		(pOCPWMHandle);	

	while(1)
	{
		//work in the frequency domain
		fourierTransform(FRAME_SIZE,compX,frctAudioIn);
		filterNegativeFreq(FRAME_SIZE,compXfiltered,compX);
		shiftFreqSpectrum(FRAME_SIZE,iShiftAmount,compXshifted,compXfiltered);
		inverseFourierTransform(FRAME_SIZE,frctAudioOut,compXshifted);
	
		//Wait till the OC is available for a new frame
		while(OCPWMIsBusy(pOCPWMHandle));	
		//Write the real part of the frequency shifted complex audio signal to the output
		OCPWMWrite (pOCPWMHandle,frctAudioOut,FRAME_SIZE);
		
	}
}
