################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/hardware_divider/divider.c 

S_UPPER_SRCS += \
../Core/Inc/hardware_divider/divider.S 

OBJS += \
./Core/Inc/hardware_divider/divider.o 

S_UPPER_DEPS += \
./Core/Inc/hardware_divider/divider.d 

C_DEPS += \
./Core/Inc/hardware_divider/divider.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/hardware_divider/%.o: ../Core/Inc/hardware_divider/%.S Core/Inc/hardware_divider/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Core/Inc/hardware_divider/%.o Core/Inc/hardware_divider/%.su Core/Inc/hardware_divider/%.cyclo: ../Core/Inc/hardware_divider/%.c Core/Inc/hardware_divider/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-hardware_divider

clean-Core-2f-Inc-2f-hardware_divider:
	-$(RM) ./Core/Inc/hardware_divider/divider.cyclo ./Core/Inc/hardware_divider/divider.d ./Core/Inc/hardware_divider/divider.o ./Core/Inc/hardware_divider/divider.su

.PHONY: clean-Core-2f-Inc-2f-hardware_divider

