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
#include<stdio.h>
#include<stdlib.h>

#include "..\inc\filter.h"
#include "..\inc\modulate.h"
#include "..\inc\complexmultiply.h"
#include "..\inc\transform.h"
#include "..\inc\LED_Display.h"

#define FRAME_SIZE 				256

#define PRESSED					1
#define UNPRESSED				0

/*Allocate memory for input and output buffers*/
fractional adcBuffer [ADC_CHANNEL_DMA_BUFSIZE] __attribute__((space(dma)));
fractional ocPWMBuffer [OCPWM_DMA_BUFSIZE] __attribute__((space(dma)));

/*variables for FFT*/
fractcomplex compx[FRAME_SIZE]__attribute__((space(ymemory), far));
fractcomplex compX[FRAME_SIZE]__attribute__((space(ymemory), far));
fractcomplex compXfiltered[FRAME_SIZE]__attribute__((space(ymemory), far));

/*variables for audio processing*/
fractional frctAudioIn [FRAME_SIZE]__attribute__((space(xmemory), far));
fractional frctAudioOut [(FRAME_SIZE)*5]__attribute__((space(ymemory), far));



/*Instantiate the drivers*/
ADCChannelHandle adcChannelHandle;
OCPWMHandle ocPWMHandle;

/*Create the driver handles*/
ADCChannelHandle *pADCChannelHandle = &adcChannelHandle;
OCPWMHandle *pOCPWMHandle = &ocPWMHandle;

int main(void) {
    ex_sask_init();

    /*Initialise Audio input and output function*/
    ADCChannelInit(pADCChannelHandle, adcBuffer);
    OCPWMInit(pOCPWMHandle, ocPWMBuffer);

    /*Start Audio input and output function*/
    ADCChannelStart(pADCChannelHandle);
    OCPWMStart(pOCPWMHandle);

    /*Initialising variables that are needed for calculating the peak frequency*/
    int peakFrequency = 0;
    int peakFrequencyBin = 0;

    int switchState = 0;
    int stateVariableForPitchDetection = 0;

    int firstPartExecutedDecision = 0;

    while (1) {
        /*Wait till the ADC has a new frame available*/
        while (ADCChannelIsBusy(pADCChannelHandle));

        /*Read in the Audio Samples from the ADC*/
        ADCChannelRead(pADCChannelHandle, frctAudioIn, FRAME_SIZE);

        /*Computing the FFT of the raw signal*/
        fourierTransform(FRAME_SIZE, compX, frctAudioIn);

        /*Removing the negative part of the FFT output (imaginary part) by zeroing it out*/
        filterNegativeFreq(FRAME_SIZE, compXfiltered, compX);

        /*Compute the square magnitude of the complex FFT output array so we have a Real output vetor*/
        SquareMagnitudeCplx(FRAME_SIZE / 2, &compXfiltered[0], &compXfiltered[0].real);

        /*Find the frequency Bin ( = index into the SigCmpx[] array) that has the largest energy*/
        /*i.e., the largest spectral component*/
        VectorMax(FRAME_SIZE / 2, &compXfiltered[0].real, &peakFrequencyBin);

        /*Compute the frequency (in Hz) of the largest spectral component*/
        peakFrequency = peakFrequencyBin * (8000 / FRAME_SIZE);

        /*Uses the peak frequency variable to turn on the corresponding LEDs*/
        turnOnLEDs(peakFrequency);



        //  if(CheckSwitchS1() == PRESSED){
        //            int i=0;
        //            for(i;i<(FRAME_SIZE)*2;i++){
        //                if(i>=FRAME_SIZE){
        //                    int j = i-FRAME_SIZE;
        //                    frctAudioOut[i] = frctAudioIn[j];
        //                }
        //                else{
        //                    frctAudioOut[i] = frctAudioIn[i];
        //                }
        //            }
        //            


        //            frctAudioOut[i] = frctAudioIn[i];
        //    }

        //        int debugFrequency = 500;
        //        createSimpleSignal(debugFrequency,FRAME_SIZE,frctAudioOut);	
        //GREEN_LED=0;

        if (CheckSwitchS1() == PRESSED) {
            if (switchState == 0) {
                //                int debugFrequency = 500;
                //                createSimpleSignal(debugFrequency, FRAME_SIZE, frctAudioOut);

                if (firstPartExecutedDecision == 0) {
                    int i = 0;

                    for (i; i < FRAME_SIZE; i++) {
                        frctAudioOut[i] = frctAudioIn[i]*0.5;
                    }
                    firstPartExecutedDecision = 1;
                }

                if (firstPartExecutedDecision == 1) {
                    int i = FRAME_SIZE;
                    int iFrameSize = 0;
                    for (i; i < (FRAME_SIZE)*2; i++) {
                        frctAudioOut[i] = frctAudioIn[iFrameSize]*0.5;
                        iFrameSize++;
                    }
                    firstPartExecutedDecision = 2;
                }

                if (firstPartExecutedDecision == 2) {
                    int i = (FRAME_SIZE)*2;
                    int iFrameSize = 0;
                    for (i; i < (FRAME_SIZE)*3; i++) {
                        frctAudioOut[i] = frctAudioIn[iFrameSize]*0.5;
                        iFrameSize++;
                    }
                    firstPartExecutedDecision = 3;
                }

                if (firstPartExecutedDecision == 3) {
                    int i = (FRAME_SIZE)*3;
                    int iFrameSize = 0;
                    for (i; i < (FRAME_SIZE)*4; i++) {
                        frctAudioOut[i] = frctAudioIn[iFrameSize]*0.5;
                        iFrameSize++;
                    }
                    firstPartExecutedDecision = 4;
                }

                if (firstPartExecutedDecision == 4) {
                    int i = (FRAME_SIZE)*4;
                    int iFrameSize = 0;
                    for (i; i < (FRAME_SIZE)*5; i++) {
                        frctAudioOut[i] = frctAudioIn[iFrameSize]*0.5;
                        iFrameSize++;
                    }
                    firstPartExecutedDecision = -1;
                    switchState = 1;
                }
            } else if (switchState == 1) {
                int i = 0;
                for (i; i < (FRAME_SIZE)*5; i++) {
                    frctAudioOut[i] = 0;
                }
                switchState = 0;
                firstPartExecutedDecision = 0;
            }
        }

        //        if (peakFrequency >= 800) {
        //
        //            if (peakFrequency <= 1600) {
        //                int debugFrequency = 500;
        //                createSimpleSignal(debugFrequency, FRAME_SIZE, frctAudioOut);
        //            } else if (peakFrequency <= 2400) {
        //                int debugFrequency = 800;
        //                createSimpleSignal(debugFrequency, FRAME_SIZE, frctAudioOut);
        //            } else if (peakFrequency <= 3200) {
        //                int debugFrequency = 1000;
        //                createSimpleSignal(debugFrequency, FRAME_SIZE, frctAudioOut);
        //            } else if (peakFrequency <= 4000) {
        //                int debugFrequency = 1500;
        //                createSimpleSignal(debugFrequency, FRAME_SIZE, frctAudioOut);
        //            }
        //        } else {
        //            int i = 0;
        //            for (i; i < FRAME_SIZE; i++) {
        //                frctAudioOut[i] = 0;
        //            }
        //
        //        }

        //        int i = 0;
        //        for (i; i < FRAME_SIZE; i++) {
        //            frctAudioOut[i] = frctAudioOut[i];
        //        }

        while (OCPWMIsBusy(pOCPWMHandle));
        OCPWMWrite(pOCPWMHandle, frctAudioOut, (FRAME_SIZE)*5);


        //        int i=0;
        //        for(i; i<FRAME_SIZE; i++){
        //            frctAudioIn[i] = frctAudioIn[i]*0.5;
        //        }

        //        if(CheckSwitchS2() == PRESSED){
        //            while(OCPWMIsBusy(pOCPWMHandle));	
        //            OCPWMWrite (pOCPWMHandle,frctAudioOut,FRAME_SIZE);
        //        }
    }
}
