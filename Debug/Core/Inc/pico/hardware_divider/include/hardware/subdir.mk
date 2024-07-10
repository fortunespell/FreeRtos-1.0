################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../Core/Inc/pico/hardware_divider/include/hardware/divider_helper.S 

OBJS += \
./Core/Inc/pico/hardware_divider/include/hardware/divider_helper.o 

S_UPPER_DEPS += \
./Core/Inc/pico/hardware_divider/include/hardware/divider_helper.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/pico/hardware_divider/include/hardware/%.o: ../Core/Inc/pico/hardware_divider/include/hardware/%.S Core/Inc/pico/hardware_divider/include/hardware/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Inc-2f-pico-2f-hardware_divider-2f-include-2f-hardware

clean-Core-2f-Inc-2f-pico-2f-hardware_divider-2f-include-2f-hardware:
	-$(RM) ./Core/Inc/pico/hardware_divider/include/hardware/divider_helper.d ./Core/Inc/pico/hardware_divider/include/hardware/divider_helper.o

.PHONY: clean-Core-2f-Inc-2f-pico-2f-hardware_divider-2f-include-2f-hardware

