################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/host/hardware_timer/timer.c 

OBJS += \
./Core/Inc/host/hardware_timer/timer.o 

C_DEPS += \
./Core/Inc/host/hardware_timer/timer.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/host/hardware_timer/%.o Core/Inc/host/hardware_timer/%.su Core/Inc/host/hardware_timer/%.cyclo: ../Core/Inc/host/hardware_timer/%.c Core/Inc/host/hardware_timer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-host-2f-hardware_timer

clean-Core-2f-Inc-2f-host-2f-hardware_timer:
	-$(RM) ./Core/Inc/host/hardware_timer/timer.cyclo ./Core/Inc/host/hardware_timer/timer.d ./Core/Inc/host/hardware_timer/timer.o ./Core/Inc/host/hardware_timer/timer.su

.PHONY: clean-Core-2f-Inc-2f-host-2f-hardware_timer

