################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/btstack_hci_transport_cyw43.c \
../Core/Inc/hardware_irq_test.c \
../Core/Inc/hardware_pwm_test.c \
../Core/Inc/timeout_helper.c 

S_UPPER_SRCS += \
../Core/Inc/asm_helper.S \
../Core/Inc/divider_helper.S \
../Core/Inc/irq_handler_chain.S 

OBJS += \
./Core/Inc/asm_helper.o \
./Core/Inc/btstack_hci_transport_cyw43.o \
./Core/Inc/divider_helper.o \
./Core/Inc/hardware_irq_test.o \
./Core/Inc/hardware_pwm_test.o \
./Core/Inc/irq_handler_chain.o \
./Core/Inc/timeout_helper.o 

S_UPPER_DEPS += \
./Core/Inc/asm_helper.d \
./Core/Inc/divider_helper.d \
./Core/Inc/irq_handler_chain.d 

C_DEPS += \
./Core/Inc/btstack_hci_transport_cyw43.d \
./Core/Inc/hardware_irq_test.d \
./Core/Inc/hardware_pwm_test.d \
./Core/Inc/timeout_helper.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/%.o: ../Core/Inc/%.S Core/Inc/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Core/Inc/%.o Core/Inc/%.su Core/Inc/%.cyclo: ../Core/Inc/%.c Core/Inc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc

clean-Core-2f-Inc:
	-$(RM) ./Core/Inc/asm_helper.d ./Core/Inc/asm_helper.o ./Core/Inc/btstack_hci_transport_cyw43.cyclo ./Core/Inc/btstack_hci_transport_cyw43.d ./Core/Inc/btstack_hci_transport_cyw43.o ./Core/Inc/btstack_hci_transport_cyw43.su ./Core/Inc/divider_helper.d ./Core/Inc/divider_helper.o ./Core/Inc/hardware_irq_test.cyclo ./Core/Inc/hardware_irq_test.d ./Core/Inc/hardware_irq_test.o ./Core/Inc/hardware_irq_test.su ./Core/Inc/hardware_pwm_test.cyclo ./Core/Inc/hardware_pwm_test.d ./Core/Inc/hardware_pwm_test.o ./Core/Inc/hardware_pwm_test.su ./Core/Inc/irq_handler_chain.d ./Core/Inc/irq_handler_chain.o ./Core/Inc/timeout_helper.cyclo ./Core/Inc/timeout_helper.d ./Core/Inc/timeout_helper.o ./Core/Inc/timeout_helper.su

.PHONY: clean-Core-2f-Inc

