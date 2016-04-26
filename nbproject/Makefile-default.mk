#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AudioAdjuster.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/AudioAdjuster.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../MicroChip/libs/board/src/sask.c ../../../MicroChip/libs/peripherals/adc/src/ADCChannelDrv.c ../../../MicroChip/libs/peripherals/pwm/src/OCPWMDrv.c src/filter.c src/main.c ../../libs/board/src/ex_sask_generic.c ../../libs/board/src/ex_sask_led.c src/modulate.c src/complexmultiply.c src/transform.c src/LED_Display.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1066792872/sask.o ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o ${OBJECTDIR}/src/filter.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o ${OBJECTDIR}/src/modulate.o ${OBJECTDIR}/src/complexmultiply.o ${OBJECTDIR}/src/transform.o ${OBJECTDIR}/src/LED_Display.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1066792872/sask.o.d ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.d ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.d ${OBJECTDIR}/src/filter.o.d ${OBJECTDIR}/src/main.o.d ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.d ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.d ${OBJECTDIR}/src/modulate.o.d ${OBJECTDIR}/src/complexmultiply.o.d ${OBJECTDIR}/src/transform.o.d ${OBJECTDIR}/src/LED_Display.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1066792872/sask.o ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o ${OBJECTDIR}/src/filter.o ${OBJECTDIR}/src/main.o ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o ${OBJECTDIR}/src/modulate.o ${OBJECTDIR}/src/complexmultiply.o ${OBJECTDIR}/src/transform.o ${OBJECTDIR}/src/LED_Display.o

# Source Files
SOURCEFILES=../../../MicroChip/libs/board/src/sask.c ../../../MicroChip/libs/peripherals/adc/src/ADCChannelDrv.c ../../../MicroChip/libs/peripherals/pwm/src/OCPWMDrv.c src/filter.c src/main.c ../../libs/board/src/ex_sask_generic.c ../../libs/board/src/ex_sask_led.c src/modulate.c src/complexmultiply.c src/transform.c src/LED_Display.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/AudioAdjuster.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ256GP506
MP_LINKER_FILE_OPTION=,-Tp33FJ256GP506.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1066792872/sask.o: ../../../MicroChip/libs/board/src/sask.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1066792872" 
	@${RM} ${OBJECTDIR}/_ext/1066792872/sask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066792872/sask.o.ok ${OBJECTDIR}/_ext/1066792872/sask.o.err 
	@${RM} ${OBJECTDIR}/_ext/1066792872/sask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1066792872/sask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/1066792872/sask.o.d" -o ${OBJECTDIR}/_ext/1066792872/sask.o ../../../MicroChip/libs/board/src/sask.c    
	
${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o: ../../../MicroChip/libs/peripherals/adc/src/ADCChannelDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1445252982" 
	@${RM} ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.ok ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.d" -o ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o ../../../MicroChip/libs/peripherals/adc/src/ADCChannelDrv.c    
	
${OBJECTDIR}/_ext/464410576/OCPWMDrv.o: ../../../MicroChip/libs/peripherals/pwm/src/OCPWMDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/464410576" 
	@${RM} ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.ok ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.err 
	@${RM} ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.d" -o ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o ../../../MicroChip/libs/peripherals/pwm/src/OCPWMDrv.c    
	
${OBJECTDIR}/src/filter.o: src/filter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/filter.o.d 
	@${RM} ${OBJECTDIR}/src/filter.o.ok ${OBJECTDIR}/src/filter.o.err 
	@${RM} ${OBJECTDIR}/src/filter.o 
	@${FIXDEPS} "${OBJECTDIR}/src/filter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/filter.o.d" -o ${OBJECTDIR}/src/filter.o src/filter.c    
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o.ok ${OBJECTDIR}/src/main.o.err 
	@${RM} ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c    
	
${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o: ../../libs/board/src/ex_sask_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1673978214" 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.ok ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.err 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.d" -o ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o ../../libs/board/src/ex_sask_generic.c    
	
${OBJECTDIR}/_ext/1673978214/ex_sask_led.o: ../../libs/board/src/ex_sask_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1673978214" 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.ok ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.err 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.d" -o ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o ../../libs/board/src/ex_sask_led.c    
	
${OBJECTDIR}/src/modulate.o: src/modulate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/modulate.o.d 
	@${RM} ${OBJECTDIR}/src/modulate.o.ok ${OBJECTDIR}/src/modulate.o.err 
	@${RM} ${OBJECTDIR}/src/modulate.o 
	@${FIXDEPS} "${OBJECTDIR}/src/modulate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/modulate.o.d" -o ${OBJECTDIR}/src/modulate.o src/modulate.c    
	
${OBJECTDIR}/src/complexmultiply.o: src/complexmultiply.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/complexmultiply.o.d 
	@${RM} ${OBJECTDIR}/src/complexmultiply.o.ok ${OBJECTDIR}/src/complexmultiply.o.err 
	@${RM} ${OBJECTDIR}/src/complexmultiply.o 
	@${FIXDEPS} "${OBJECTDIR}/src/complexmultiply.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/complexmultiply.o.d" -o ${OBJECTDIR}/src/complexmultiply.o src/complexmultiply.c    
	
${OBJECTDIR}/src/transform.o: src/transform.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/transform.o.d 
	@${RM} ${OBJECTDIR}/src/transform.o.ok ${OBJECTDIR}/src/transform.o.err 
	@${RM} ${OBJECTDIR}/src/transform.o 
	@${FIXDEPS} "${OBJECTDIR}/src/transform.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/transform.o.d" -o ${OBJECTDIR}/src/transform.o src/transform.c    
	
${OBJECTDIR}/src/LED_Display.o: src/LED_Display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/LED_Display.o.d 
	@${RM} ${OBJECTDIR}/src/LED_Display.o.ok ${OBJECTDIR}/src/LED_Display.o.err 
	@${RM} ${OBJECTDIR}/src/LED_Display.o 
	@${FIXDEPS} "${OBJECTDIR}/src/LED_Display.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG  -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/LED_Display.o.d" -o ${OBJECTDIR}/src/LED_Display.o src/LED_Display.c    
	
else
${OBJECTDIR}/_ext/1066792872/sask.o: ../../../MicroChip/libs/board/src/sask.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1066792872" 
	@${RM} ${OBJECTDIR}/_ext/1066792872/sask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1066792872/sask.o.ok ${OBJECTDIR}/_ext/1066792872/sask.o.err 
	@${RM} ${OBJECTDIR}/_ext/1066792872/sask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1066792872/sask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/1066792872/sask.o.d" -o ${OBJECTDIR}/_ext/1066792872/sask.o ../../../MicroChip/libs/board/src/sask.c    
	
${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o: ../../../MicroChip/libs/peripherals/adc/src/ADCChannelDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1445252982" 
	@${RM} ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.ok ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.err 
	@${RM} ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o.d" -o ${OBJECTDIR}/_ext/1445252982/ADCChannelDrv.o ../../../MicroChip/libs/peripherals/adc/src/ADCChannelDrv.c    
	
${OBJECTDIR}/_ext/464410576/OCPWMDrv.o: ../../../MicroChip/libs/peripherals/pwm/src/OCPWMDrv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/464410576" 
	@${RM} ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.d 
	@${RM} ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.ok ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.err 
	@${RM} ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/464410576/OCPWMDrv.o.d" -o ${OBJECTDIR}/_ext/464410576/OCPWMDrv.o ../../../MicroChip/libs/peripherals/pwm/src/OCPWMDrv.c    
	
${OBJECTDIR}/src/filter.o: src/filter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/filter.o.d 
	@${RM} ${OBJECTDIR}/src/filter.o.ok ${OBJECTDIR}/src/filter.o.err 
	@${RM} ${OBJECTDIR}/src/filter.o 
	@${FIXDEPS} "${OBJECTDIR}/src/filter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/filter.o.d" -o ${OBJECTDIR}/src/filter.o src/filter.c    
	
${OBJECTDIR}/src/main.o: src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main.o.d 
	@${RM} ${OBJECTDIR}/src/main.o.ok ${OBJECTDIR}/src/main.o.err 
	@${RM} ${OBJECTDIR}/src/main.o 
	@${FIXDEPS} "${OBJECTDIR}/src/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/main.o.d" -o ${OBJECTDIR}/src/main.o src/main.c    
	
${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o: ../../libs/board/src/ex_sask_generic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1673978214" 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.ok ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.err 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o.d" -o ${OBJECTDIR}/_ext/1673978214/ex_sask_generic.o ../../libs/board/src/ex_sask_generic.c    
	
${OBJECTDIR}/_ext/1673978214/ex_sask_led.o: ../../libs/board/src/ex_sask_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1673978214" 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.ok ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.err 
	@${RM} ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/_ext/1673978214/ex_sask_led.o.d" -o ${OBJECTDIR}/_ext/1673978214/ex_sask_led.o ../../libs/board/src/ex_sask_led.c    
	
${OBJECTDIR}/src/modulate.o: src/modulate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/modulate.o.d 
	@${RM} ${OBJECTDIR}/src/modulate.o.ok ${OBJECTDIR}/src/modulate.o.err 
	@${RM} ${OBJECTDIR}/src/modulate.o 
	@${FIXDEPS} "${OBJECTDIR}/src/modulate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/modulate.o.d" -o ${OBJECTDIR}/src/modulate.o src/modulate.c    
	
${OBJECTDIR}/src/complexmultiply.o: src/complexmultiply.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/complexmultiply.o.d 
	@${RM} ${OBJECTDIR}/src/complexmultiply.o.ok ${OBJECTDIR}/src/complexmultiply.o.err 
	@${RM} ${OBJECTDIR}/src/complexmultiply.o 
	@${FIXDEPS} "${OBJECTDIR}/src/complexmultiply.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/complexmultiply.o.d" -o ${OBJECTDIR}/src/complexmultiply.o src/complexmultiply.c    
	
${OBJECTDIR}/src/transform.o: src/transform.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/transform.o.d 
	@${RM} ${OBJECTDIR}/src/transform.o.ok ${OBJECTDIR}/src/transform.o.err 
	@${RM} ${OBJECTDIR}/src/transform.o 
	@${FIXDEPS} "${OBJECTDIR}/src/transform.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/transform.o.d" -o ${OBJECTDIR}/src/transform.o src/transform.c    
	
${OBJECTDIR}/src/LED_Display.o: src/LED_Display.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/LED_Display.o.d 
	@${RM} ${OBJECTDIR}/src/LED_Display.o.ok ${OBJECTDIR}/src/LED_Display.o.err 
	@${RM} ${OBJECTDIR}/src/LED_Display.o 
	@${FIXDEPS} "${OBJECTDIR}/src/LED_Display.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -omf=coff -x c -c -mcpu=$(MP_PROCESSOR_OPTION) -Wall -I"../../libs" -I"../../../MicroChip/libs" -I"../../../MicroChip/libs/board/h" -I"../../../MicroChip/libs/dsp/h" -I"../../../MicroChip/libs/peripherals/adc/h" -I"../../../MicroChip/libs/peripherals/pwm/h" -I"../../libs/board/inc" -I"inc" -I"." -MMD -MF "${OBJECTDIR}/src/LED_Display.o.d" -o ${OBJECTDIR}/src/LED_Display.o src/LED_Display.c    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/AudioAdjuster.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/Program\ Files\ (x86)/Microchip/MPLAB\ C30/lib/libdsp-coff.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG  -o dist/${CND_CONF}/${IMAGE_TYPE}/AudioAdjuster.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}   "C:\Program Files (x86)\Microchip\MPLAB C30\lib\libdsp-coff.a"      -Wl,--defsym=__MPLAB_BUILD=1,-L"C:/Microchip Starter Kits/dsPIC Starter Kit - 1/MPLAB C30/lib",-L".",-Map="${DISTDIR}/AudioAdjuster.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
else
dist/${CND_CONF}/${IMAGE_TYPE}/AudioAdjuster.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  C:/Program\ Files\ (x86)/Microchip/MPLAB\ C30/lib/libdsp-coff.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -omf=coff -mcpu=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/AudioAdjuster.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}   "C:\Program Files (x86)\Microchip\MPLAB C30\lib\libdsp-coff.a"      -Wl,--defsym=__MPLAB_BUILD=1,-L"C:/Microchip Starter Kits/dsPIC Starter Kit - 1/MPLAB C30/lib",-L".",-Map="${DISTDIR}/AudioAdjuster.${IMAGE_TYPE}.map",--report-mem$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION)
	${MP_CC_DIR}\\pic30-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/AudioAdjuster.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -omf=coff
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
