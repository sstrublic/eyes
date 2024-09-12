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
ifeq "$(wildcard nbproject/Makefile-local-Skull.mk)" "nbproject/Makefile-local-Skull.mk"
include nbproject/Makefile-local-Skull.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Skull
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/dee/src/dee.c mcc_generated_files/flash/src/flash_asm.s mcc_generated_files/flash/src/flash.c mcc_generated_files/pwm/src/sccp3.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/reset.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/dmt.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/dmt_asm.s mcc_generated_files/system/src/traps.c mcc_generated_files/timer/src/sccp1.c mcc_generated_files/uart/src/uart3.c mcc_generated_files/uart/src/uart1.c main.c led.c systick.c sequences.c seqdata_skull.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/dee/src/dee.o ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/led.o ${OBJECTDIR}/systick.o ${OBJECTDIR}/sequences.o ${OBJECTDIR}/seqdata_skull.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d ${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/led.o.d ${OBJECTDIR}/systick.o.d ${OBJECTDIR}/sequences.o.d ${OBJECTDIR}/seqdata_skull.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/dee/src/dee.o ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/led.o ${OBJECTDIR}/systick.o ${OBJECTDIR}/sequences.o ${OBJECTDIR}/seqdata_skull.o

# Source Files
SOURCEFILES=mcc_generated_files/dee/src/dee.c mcc_generated_files/flash/src/flash_asm.s mcc_generated_files/flash/src/flash.c mcc_generated_files/pwm/src/sccp3.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/reset.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/dmt.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/dmt_asm.s mcc_generated_files/system/src/traps.c mcc_generated_files/timer/src/sccp1.c mcc_generated_files/uart/src/uart3.c mcc_generated_files/uart/src/uart1.c main.c led.c systick.c sequences.c seqdata_skull.c



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
	${MAKE}  -f nbproject/Makefile-Skull.mk ${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CK64MC105
MP_LINKER_FILE_OPTION=,--script=p33CK64MC105.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/dee/src/dee.o: mcc_generated_files/dee/src/dee.c  .generated_files/flags/Skull/517bb1f8bb97a58135ce322480c94c89a7778291 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/dee/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/dee/src/dee.c  -o ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/flash/src/flash.o: mcc_generated_files/flash/src/flash.c  .generated_files/flags/Skull/921b09bc86a10c44a4d9d905034d492557c9104c .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/flash/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/flash/src/flash.c  -o ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o: mcc_generated_files/pwm/src/sccp3.c  .generated_files/flags/Skull/60c106db05ced4405c8576c8ebad0263caedd113 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pwm/src/sccp3.c  -o ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/Skull/cc95f301e68be21d1b232dfb8ebe847fe65dad4f .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/config_bits.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/Skull/c53f02b1fd6a68efc1c4ec7d7e6b255bcf3795e8 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/system.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/reset.o: mcc_generated_files/system/src/reset.c  .generated_files/flags/Skull/f1791eff71838e52e0a49081813d6fea1e30b274 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/reset.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/Skull/559fdcdb5d2b8a4190f6c99d3b14d48f3b6ac1a6 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/clock.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/Skull/5d400c1ff5a1c20a6b0a62a84d652f9cd16afb1b .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/interrupt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt.o: mcc_generated_files/system/src/dmt.c  .generated_files/flags/Skull/2a36ac3403fa8528b1891ae84c46bc60a4862746 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/dmt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/Skull/cb2bde2c8b44ea724bc741f5f9ea36574693bcff .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/pins.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/traps.o: mcc_generated_files/system/src/traps.c  .generated_files/flags/Skull/b763ff046118d8a7b14fe8e63534d5fa998c8c4c .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/traps.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o: mcc_generated_files/timer/src/sccp1.c  .generated_files/flags/Skull/d052e54577039fd26935c7acf983af2a41c9b13b .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/timer/src/sccp1.c  -o ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o: mcc_generated_files/uart/src/uart3.c  .generated_files/flags/Skull/3477668a6a23ca549049ec4e48eab18c9dcb4798 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart/src/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o: mcc_generated_files/uart/src/uart1.c  .generated_files/flags/Skull/e4a1019151fe87912f1b55c1fa9c5e98bd1b94be .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart/src/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Skull/f870d0b71e2bb3a769d10bde85db61916f5d22cd .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/led.o: led.c  .generated_files/flags/Skull/429674d56efb18bb5b8df5cf6ffbd0ff180a1f64 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  led.c  -o ${OBJECTDIR}/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/led.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/systick.o: systick.c  .generated_files/flags/Skull/5f983853052498af978861e7ade4ddab6f422d67 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/systick.o.d 
	@${RM} ${OBJECTDIR}/systick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  systick.c  -o ${OBJECTDIR}/systick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/systick.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sequences.o: sequences.c  .generated_files/flags/Skull/bfdd41e059ca0e868b5bb3e6c0041f84a2944542 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequences.o.d 
	@${RM} ${OBJECTDIR}/sequences.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sequences.c  -o ${OBJECTDIR}/sequences.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sequences.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/seqdata_skull.o: seqdata_skull.c  .generated_files/flags/Skull/61d48478ee061eaa7f4223a299bb19e136cfb5a1 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/seqdata_skull.o.d 
	@${RM} ${OBJECTDIR}/seqdata_skull.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  seqdata_skull.c  -o ${OBJECTDIR}/seqdata_skull.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/seqdata_skull.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/dee/src/dee.o: mcc_generated_files/dee/src/dee.c  .generated_files/flags/Skull/87c6110d10a3994b8824c68122ce4d7e19ddadda .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/dee/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/dee/src/dee.c  -o ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/flash/src/flash.o: mcc_generated_files/flash/src/flash.c  .generated_files/flags/Skull/e8de9e4403018dcf6c70311ac3b81e0bef3b2fae .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/flash/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/flash/src/flash.c  -o ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o: mcc_generated_files/pwm/src/sccp3.c  .generated_files/flags/Skull/56af84dd2bd39b71ddb6d8d4f0b26220679aa360 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pwm/src/sccp3.c  -o ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/Skull/6425f771a1d2d3e5313445cf3ec43246c78112d0 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/config_bits.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/Skull/4cf748b245e3384d47f0c287eda96aa07faccde7 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/system.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/reset.o: mcc_generated_files/system/src/reset.c  .generated_files/flags/Skull/f97324f29a8e7fd3176d129baa24fe2cbe3b3df5 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/reset.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/Skull/7a9d0fdfd8d4022548ea3b15d30aad483494905e .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/clock.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/Skull/f92fbd8341717a8270f8681af6f3db238ae87762 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/interrupt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt.o: mcc_generated_files/system/src/dmt.c  .generated_files/flags/Skull/e43f23320d2d903727554c681807f8bfad5c7cc3 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/dmt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/Skull/4c7fd5c4d76b6e2983089fccc46cfca8d08b04e6 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/pins.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/traps.o: mcc_generated_files/system/src/traps.c  .generated_files/flags/Skull/5f1eeec6e4f86ae1ea57648089fbeb6012d9d58 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/traps.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o: mcc_generated_files/timer/src/sccp1.c  .generated_files/flags/Skull/8aad59e67baf9b15a7fd8ec54834fdda4efbbe76 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/timer/src/sccp1.c  -o ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o: mcc_generated_files/uart/src/uart3.c  .generated_files/flags/Skull/6b30a5a6ab75220f02ff55cfabefd607bc27ec24 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart/src/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o: mcc_generated_files/uart/src/uart1.c  .generated_files/flags/Skull/7b3795f90534f8481109c2b8eda7938e8029225f .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart/src/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Skull/19a426e98ff97cfdc298f63230c23862f60a5aab .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/led.o: led.c  .generated_files/flags/Skull/a55e08ea7d65a92f1a4b97de260aad4d644d6952 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  led.c  -o ${OBJECTDIR}/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/systick.o: systick.c  .generated_files/flags/Skull/f2a56518f91da10dd7839daa930dbdaa78e4785e .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/systick.o.d 
	@${RM} ${OBJECTDIR}/systick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  systick.c  -o ${OBJECTDIR}/systick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/systick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sequences.o: sequences.c  .generated_files/flags/Skull/6bb91a766a4549839edd9f72d4eca8c86c9ce37c .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequences.o.d 
	@${RM} ${OBJECTDIR}/sequences.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sequences.c  -o ${OBJECTDIR}/sequences.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sequences.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/seqdata_skull.o: seqdata_skull.c  .generated_files/flags/Skull/b8d775692e64919dd26f0c48fd5b9ff51814f283 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/seqdata_skull.o.d 
	@${RM} ${OBJECTDIR}/seqdata_skull.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  seqdata_skull.c  -o ${OBJECTDIR}/seqdata_skull.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/seqdata_skull.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__SKULL -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o: mcc_generated_files/flash/src/flash_asm.s  .generated_files/flags/Skull/4632cf5b1005a7ad22d7d2f51beeda13da0a2b45 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/flash/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/flash/src/flash_asm.s  -o ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_Skull=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o: mcc_generated_files/system/src/dmt_asm.s  .generated_files/flags/Skull/1e7a2f1c1aa637ada076a945f4c36f3791e8ed22 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/system/src/dmt_asm.s  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_Skull=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o: mcc_generated_files/flash/src/flash_asm.s  .generated_files/flags/Skull/68440ed8aeacb6ba85875593f2951c98bb3d95f5 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/flash/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/flash/src/flash_asm.s  -o ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Skull=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o: mcc_generated_files/system/src/dmt_asm.s  .generated_files/flags/Skull/d0b1327a5d136071919e1a72e6e29b01c6bf92f4 .generated_files/flags/Skull/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/system/src/dmt_asm.s  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Skull=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/eyes.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_Skull=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc-dsc-bin2hex ${DISTDIR}/eyes.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
