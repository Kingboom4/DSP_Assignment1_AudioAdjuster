/**************************************************************************************************
* @file		Projects\AudioAdjuster\src\LED_Display.c
*
* Summary:
*         	The functions associated with operating the LEDs after the peak frequency has been
*			obtained
*
* ToDo:
*     		none
*
* Originator:
*     		Wajahat Waraich
*
**************************************************************************************************/
#include "..\inc\LED_Display.h"
#include <dsp\h\dsp.h>

/************************************************************************************************** 
* @fn turnOnLEDs 
* @param int peakFrequency
* @return None
* @brief turns on the LEDs that correspond to the peak frequency
**************************************************************************************************/

void turnOnLEDs(int peakFrequency){
	if(peakFrequency<=800){
		GREEN_LED=1;
		RED_LED=0;
		YELLOW_LED=1;
	}
	
	else if(peakFrequency <= 1600){
		GREEN_LED=1;
		RED_LED=0;
		YELLOW_LED=0;
	}

	else if(peakFrequency <= 2400){
		GREEN_LED=1;
		RED_LED=1;
		YELLOW_LED=0;
	}

	else if(peakFrequency <= 3200){
		GREEN_LED=0;
		RED_LED=1;
		YELLOW_LED=0;	
	}

	else if(peakFrequency <=4000){
		GREEN_LED=0;
		RED_LED=1;
		YELLOW_LED=1;	
	}
}