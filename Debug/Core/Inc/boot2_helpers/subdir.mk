################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Core/Inc/boot2_helpers/exit_from_boot2.S \
../Core/Inc/boot2_helpers/read_flash_sreg.S \
../Core/Inc/boot2_helpers/wait_ssi_ready.S 

OBJS += \
./Core/Inc/boot2_helpers/exit_from_boot2.o \
./Core/Inc/boot2_helpers/read_flash_sreg.o \
./Core/Inc/boot2_helpers/wait_ssi_ready.o 

S_UPPER_DEPS += \
./Core/Inc/boot2_helpers/exit_from_boot2.d \
./Core/Inc/boot2_helpers/read_flash_sreg.d \
./Core/Inc/boot2_helpers/wait_ssi_ready.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/boot2_helpers/%.o: ../Core/Inc/boot2_helpers/%.S Core/Inc/boot2_helpers/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Inc-2f-boot2_helpers

clean-Core-2f-Inc-2f-boot2_helpers:
	-$(RM) ./Core/Inc/boot2_helpers/exit_from_boot2.d ./Core/Inc/boot2_helpers/exit_from_boot2.o ./Core/Inc/boot2_helpers/read_flash_sreg.d ./Core/Inc/boot2_helpers/read_flash_sreg.o ./Core/Inc/boot2_helpers/wait_ssi_ready.d ./Core/Inc/boot2_helpers/wait_ssi_ready.o

.PHONY: clean-Core-2f-Inc-2f-boot2_helpers

