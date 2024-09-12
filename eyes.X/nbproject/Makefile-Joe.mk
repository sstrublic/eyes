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
ifeq "$(wildcard nbproject/Makefile-local-Joe.mk)" "nbproject/Makefile-local-Joe.mk"
include nbproject/Makefile-local-Joe.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=Joe
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
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/dee/src/dee.c mcc_generated_files/flash/src/flash_asm.s mcc_generated_files/flash/src/flash.c mcc_generated_files/pwm/src/sccp3.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/reset.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/dmt.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/dmt_asm.s mcc_generated_files/system/src/traps.c mcc_generated_files/timer/src/sccp1.c mcc_generated_files/uart/src/uart3.c mcc_generated_files/uart/src/uart1.c main.c led.c systick.c sequences.c seqdata_joe.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/dee/src/dee.o ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/led.o ${OBJECTDIR}/systick.o ${OBJECTDIR}/sequences.o ${OBJECTDIR}/seqdata_joe.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d ${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/led.o.d ${OBJECTDIR}/systick.o.d ${OBJECTDIR}/sequences.o.d ${OBJECTDIR}/seqdata_joe.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/dee/src/dee.o ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o ${OBJECTDIR}/mcc_generated_files/system/src/system.o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o ${OBJECTDIR}/main.o ${OBJECTDIR}/led.o ${OBJECTDIR}/systick.o ${OBJECTDIR}/sequences.o ${OBJECTDIR}/seqdata_joe.o

# Source Files
SOURCEFILES=mcc_generated_files/dee/src/dee.c mcc_generated_files/flash/src/flash_asm.s mcc_generated_files/flash/src/flash.c mcc_generated_files/pwm/src/sccp3.c mcc_generated_files/system/src/config_bits.c mcc_generated_files/system/src/system.c mcc_generated_files/system/src/reset.c mcc_generated_files/system/src/clock.c mcc_generated_files/system/src/interrupt.c mcc_generated_files/system/src/dmt.c mcc_generated_files/system/src/pins.c mcc_generated_files/system/src/dmt_asm.s mcc_generated_files/system/src/traps.c mcc_generated_files/timer/src/sccp1.c mcc_generated_files/uart/src/uart3.c mcc_generated_files/uart/src/uart1.c main.c led.c systick.c sequences.c seqdata_joe.c



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
	${MAKE}  -f nbproject/Makefile-Joe.mk ${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CK64MC105
MP_LINKER_FILE_OPTION=,--script=p33CK64MC105.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/dee/src/dee.o: mcc_generated_files/dee/src/dee.c  .generated_files/flags/Joe/24b8eed78817a8c2ae903145184d37dc60f55ba0 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/dee/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/dee/src/dee.c  -o ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/flash/src/flash.o: mcc_generated_files/flash/src/flash.c  .generated_files/flags/Joe/e9c6a19c4fb9260814753a2304760f3ba3df062a .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/flash/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/flash/src/flash.c  -o ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o: mcc_generated_files/pwm/src/sccp3.c  .generated_files/flags/Joe/df52e248eb96d94ae7333f8aef5d7d97608c1ba0 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pwm/src/sccp3.c  -o ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/Joe/62e8d3624e18233e54d29aafce3af93a33e70926 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/config_bits.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/Joe/804bda4cead53e4152136013d27a50d861c7d854 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/system.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/reset.o: mcc_generated_files/system/src/reset.c  .generated_files/flags/Joe/b15b4988f026a3c32ba69562c3e0e93cb4f14fb3 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/reset.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/Joe/7dcafcd6cb21847082ae09d74390aaea407bfd31 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/clock.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/Joe/bcc2627d5d8d3fe021280e80f1450489ba2a71c2 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/interrupt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt.o: mcc_generated_files/system/src/dmt.c  .generated_files/flags/Joe/f9c137c34b90cc44da5d6b60d19e1b2aca435591 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/dmt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/Joe/de493a052346b1863aa7681abdb73a8d3d4151ac .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/pins.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/traps.o: mcc_generated_files/system/src/traps.c  .generated_files/flags/Joe/8ea48c4cc67b38931a8601fa786642829a864f57 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/traps.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o: mcc_generated_files/timer/src/sccp1.c  .generated_files/flags/Joe/74ae958a50db02725caff316a6f7fde4c4ca779c .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/timer/src/sccp1.c  -o ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o: mcc_generated_files/uart/src/uart3.c  .generated_files/flags/Joe/32dbf7945e1e59b404212d22693d39bbdc33c58b .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart/src/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o: mcc_generated_files/uart/src/uart1.c  .generated_files/flags/Joe/e0c5ed85e98acce1c3ff66dd535059618a87f61 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart/src/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Joe/d1c0f9e7a32f377d4d1f17df830e7cc33456715c .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/led.o: led.c  .generated_files/flags/Joe/7c221d9d667612cc3866ede4958d5cb123abbd29 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  led.c  -o ${OBJECTDIR}/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/led.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/systick.o: systick.c  .generated_files/flags/Joe/c9959c92cac7aae28871463d5a58d7cfc0ae52d0 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/systick.o.d 
	@${RM} ${OBJECTDIR}/systick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  systick.c  -o ${OBJECTDIR}/systick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/systick.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sequences.o: sequences.c  .generated_files/flags/Joe/c034ec704852de2101cc1de7f51d4ba1aaedaf81 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequences.o.d 
	@${RM} ${OBJECTDIR}/sequences.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sequences.c  -o ${OBJECTDIR}/sequences.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sequences.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/seqdata_joe.o: seqdata_joe.c  .generated_files/flags/Joe/f1cf6417d7fbb2be27e71195883ff36ee69c40f9 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/seqdata_joe.o.d 
	@${RM} ${OBJECTDIR}/seqdata_joe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  seqdata_joe.c  -o ${OBJECTDIR}/seqdata_joe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/seqdata_joe.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/dee/src/dee.o: mcc_generated_files/dee/src/dee.c  .generated_files/flags/Joe/c346292d38781533f6ee77d02d7eb77211c0a7a2 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/dee/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/dee/src/dee.c  -o ${OBJECTDIR}/mcc_generated_files/dee/src/dee.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/dee/src/dee.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/flash/src/flash.o: mcc_generated_files/flash/src/flash.c  .generated_files/flags/Joe/ff4fa746785c7e62e3bc2088cf67475058060538 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/flash/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/flash/src/flash.c  -o ${OBJECTDIR}/mcc_generated_files/flash/src/flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/flash/src/flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o: mcc_generated_files/pwm/src/sccp3.c  .generated_files/flags/Joe/5209c32136ac36145d83fd9e457846876ce4afa .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/pwm/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pwm/src/sccp3.c  -o ${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pwm/src/sccp3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o: mcc_generated_files/system/src/config_bits.c  .generated_files/flags/Joe/981d299eae5e3ea3145734beea524d94b926bb58 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/config_bits.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/config_bits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/system.o: mcc_generated_files/system/src/system.c  .generated_files/flags/Joe/cc947f1468c30c9c0cf21a4b8bccf0a7f165e5cd .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/system.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/reset.o: mcc_generated_files/system/src/reset.c  .generated_files/flags/Joe/e3c4c389df27c664bbe82b68d30ff7337534efcf .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/reset.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/clock.o: mcc_generated_files/system/src/clock.c  .generated_files/flags/Joe/c30bd85c95c3cc5141fe2132ae382d5a5e2d4bc5 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/clock.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o: mcc_generated_files/system/src/interrupt.c  .generated_files/flags/Joe/dc3e1d481e514cdd783cc9dcf641b55bd37f79ba .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/interrupt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/interrupt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt.o: mcc_generated_files/system/src/dmt.c  .generated_files/flags/Joe/a7a37e6363d72c72fb9e2dd23ce5158986bcb10c .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/dmt.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/dmt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/pins.o: mcc_generated_files/system/src/pins.c  .generated_files/flags/Joe/90502aa0fa30343223c91b4b027bd726b7fe5a02 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/pins.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/pins.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/pins.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/pins.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/traps.o: mcc_generated_files/system/src/traps.c  .generated_files/flags/Joe/4e6d94731ef855d1457121d9100825a6877c857d .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system/src/traps.c  -o ${OBJECTDIR}/mcc_generated_files/system/src/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system/src/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o: mcc_generated_files/timer/src/sccp1.c  .generated_files/flags/Joe/a0aaa1c777921791a78d628f2631222e2ef98d84 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/timer/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/timer/src/sccp1.c  -o ${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/timer/src/sccp1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o: mcc_generated_files/uart/src/uart3.c  .generated_files/flags/Joe/d7652a8fee60d13c39cd1110e826ed1d3d439bcb .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart/src/uart3.c  -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart/src/uart3.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o: mcc_generated_files/uart/src/uart1.c  .generated_files/flags/Joe/f28faa5d2c7af8f363a98ea54c8b9ada02ccc1ef .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/uart/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart/src/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart/src/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/Joe/38e731b87ec213982e26c0f21d9321c75b3b0c47 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/led.o: led.c  .generated_files/flags/Joe/76e4412730a11f86554369cdae686ae36f2c63b0 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/led.o.d 
	@${RM} ${OBJECTDIR}/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  led.c  -o ${OBJECTDIR}/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/systick.o: systick.c  .generated_files/flags/Joe/e0599cbfa033ccc5ee9b671431bc1840131ca3ed .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/systick.o.d 
	@${RM} ${OBJECTDIR}/systick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  systick.c  -o ${OBJECTDIR}/systick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/systick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/sequences.o: sequences.c  .generated_files/flags/Joe/d623b5ec4f0e621517598274fed55564b27c9921 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/sequences.o.d 
	@${RM} ${OBJECTDIR}/sequences.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  sequences.c  -o ${OBJECTDIR}/sequences.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/sequences.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/seqdata_joe.o: seqdata_joe.c  .generated_files/flags/Joe/8efa0b574c1fe2f628110f7b1c4ca0bcb12d1639 .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/seqdata_joe.o.d 
	@${RM} ${OBJECTDIR}/seqdata_joe.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  seqdata_joe.c  -o ${OBJECTDIR}/seqdata_joe.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/seqdata_joe.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -mlarge-code -O0 -D__JOE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o: mcc_generated_files/flash/src/flash_asm.s  .generated_files/flags/Joe/d259b88507f162f6a042e5d9801016b87b76906d .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/flash/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/flash/src/flash_asm.s  -o ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_Joe=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o: mcc_generated_files/system/src/dmt_asm.s  .generated_files/flags/Joe/348453fc1987db034cb683683f6f9502c877166f .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/system/src/dmt_asm.s  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG   -omf=elf -DXPRJ_Joe=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o: mcc_generated_files/flash/src/flash_asm.s  .generated_files/flags/Joe/29233f7e50d9911c63021097aac3d9babbf129ee .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/flash/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/flash/src/flash_asm.s  -o ${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Joe=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/flash/src/flash_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o: mcc_generated_files/system/src/dmt_asm.s  .generated_files/flags/Joe/cea47d7c2df8911803a26593d1d044ec1e4fcedc .generated_files/flags/Joe/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/system/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  mcc_generated_files/system/src/dmt_asm.s  -o ${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_Joe=$(CND_CONF)    -Wa,-MD,"${OBJECTDIR}/mcc_generated_files/system/src/dmt_asm.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)  -mdfp="${DFP_DIR}/xc16"
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/eyes.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/eyes.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_Joe=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
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
