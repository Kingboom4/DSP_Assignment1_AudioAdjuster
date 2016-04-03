/**************************************************************************************************
* @file		Projects\AudioAdjuster\src\transform.c
*
* Summary:
*         	the functions to initialise parameters for, and perform FFT and inverse FFT operations
*
* ToDo:
*     		none
*
* Originator:
*     		Andy Watt
*
* History:
*      		Version 1.00	06/05/2013	Andy Watt	Initial Version with single function
*			Version 1.01	10/05/2013	Andy Watt	Split single function up into seperate Initialise, FFT and Inverse FFT 
*
**************************************************************************************************/
#include "..\inc\LED_Display.h"
#include <dsp\h\dsp.h>

void turnOnLEDs(int peakFrequency){
	if(peakFrequency<=800){
		GREEN_LED=0;
		RED_LED=1;
		YELLOW_LED=1;
	}
	
	else if(peakFrequency <= 1600){
		GREEN_LED=0;
		RED_LED=1;
		YELLOW_LED=0;
	}

	else if(peakFrequency <= 2400){
		GREEN_LED=1;
		RED_LED=1;
		YELLOW_LED=0;
	}

	else if(peakFrequency <= 3200){
		GREEN_LED=1;
		RED_LED=0;
		YELLOW_LED=0;	
	}

	else if(peakFrequency <=4000){
		GREEN_LED=1;
		RED_LED=0;
		YELLOW_LED=1;	
	}
}