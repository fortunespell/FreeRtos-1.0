################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/pico/hardware_adc/adc.c 

OBJS += \
./Core/Inc/pico/hardware_adc/adc.o 

C_DEPS += \
./Core/Inc/pico/hardware_adc/adc.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/pico/hardware_adc/%.o Core/Inc/pico/hardware_adc/%.su Core/Inc/pico/hardware_adc/%.cyclo: ../Core/Inc/pico/hardware_adc/%.c Core/Inc/pico/hardware_adc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-pico-2f-hardware_adc

clean-Core-2f-Inc-2f-pico-2f-hardware_adc:
	-$(RM) ./Core/Inc/pico/hardware_adc/adc.cyclo ./Core/Inc/pico/hardware_adc/adc.d ./Core/Inc/pico/hardware_adc/adc.o ./Core/Inc/pico/hardware_adc/adc.su

.PHONY: clean-Core-2f-Inc-2f-pico-2f-hardware_adc

