################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/pico/hardware_gpio/gpio.c 

OBJS += \
./Core/Inc/pico/hardware_gpio/gpio.o 

C_DEPS += \
./Core/Inc/pico/hardware_gpio/gpio.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/pico/hardware_gpio/%.o Core/Inc/pico/hardware_gpio/%.su Core/Inc/pico/hardware_gpio/%.cyclo: ../Core/Inc/pico/hardware_gpio/%.c Core/Inc/pico/hardware_gpio/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-pico-2f-hardware_gpio

clean-Core-2f-Inc-2f-pico-2f-hardware_gpio:
	-$(RM) ./Core/Inc/pico/hardware_gpio/gpio.cyclo ./Core/Inc/pico/hardware_gpio/gpio.d ./Core/Inc/pico/hardware_gpio/gpio.o ./Core/Inc/pico/hardware_gpio/gpio.su

.PHONY: clean-Core-2f-Inc-2f-pico-2f-hardware_gpio

