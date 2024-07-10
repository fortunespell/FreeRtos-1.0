################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/hardware_irq/irq.c 

S_UPPER_SRCS += \
../Core/Inc/hardware_irq/irq_handler_chain.S 

OBJS += \
./Core/Inc/hardware_irq/irq.o \
./Core/Inc/hardware_irq/irq_handler_chain.o 

S_UPPER_DEPS += \
./Core/Inc/hardware_irq/irq_handler_chain.d 

C_DEPS += \
./Core/Inc/hardware_irq/irq.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/hardware_irq/%.o Core/Inc/hardware_irq/%.su Core/Inc/hardware_irq/%.cyclo: ../Core/Inc/hardware_irq/%.c Core/Inc/hardware_irq/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Inc/hardware_irq/%.o: ../Core/Inc/hardware_irq/%.S Core/Inc/hardware_irq/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Inc-2f-hardware_irq

clean-Core-2f-Inc-2f-hardware_irq:
	-$(RM) ./Core/Inc/hardware_irq/irq.cyclo ./Core/Inc/hardware_irq/irq.d ./Core/Inc/hardware_irq/irq.o ./Core/Inc/hardware_irq/irq.su ./Core/Inc/hardware_irq/irq_handler_chain.d ./Core/Inc/hardware_irq/irq_handler_chain.o

.PHONY: clean-Core-2f-Inc-2f-hardware_irq

