################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Inc/pico/btstack_hci_transport_cyw43.c \
../Core/Inc/pico/hardware_irq_test.c \
../Core/Inc/pico/hardware_pwm_test.c \
../Core/Inc/pico/timeout_helper.c 

S_UPPER_SRCS += \
../Core/Inc/pico/asm_helper.S \
../Core/Inc/pico/divider_helper.S \
../Core/Inc/pico/irq_handler_chain.S 

OBJS += \
./Core/Inc/pico/asm_helper.o \
./Core/Inc/pico/btstack_hci_transport_cyw43.o \
./Core/Inc/pico/divider_helper.o \
./Core/Inc/pico/hardware_irq_test.o \
./Core/Inc/pico/hardware_pwm_test.o \
./Core/Inc/pico/irq_handler_chain.o \
./Core/Inc/pico/timeout_helper.o 

S_UPPER_DEPS += \
./Core/Inc/pico/asm_helper.d \
./Core/Inc/pico/divider_helper.d \
./Core/Inc/pico/irq_handler_chain.d 

C_DEPS += \
./Core/Inc/pico/btstack_hci_transport_cyw43.d \
./Core/Inc/pico/hardware_irq_test.d \
./Core/Inc/pico/hardware_pwm_test.d \
./Core/Inc/pico/timeout_helper.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Inc/pico/%.o: ../Core/Inc/pico/%.S Core/Inc/pico/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Core/Inc/pico/%.o Core/Inc/pico/%.su Core/Inc/pico/%.cyclo: ../Core/Inc/pico/%.c Core/Inc/pico/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F767xx -c -I../Core/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Inc-2f-pico

clean-Core-2f-Inc-2f-pico:
	-$(RM) ./Core/Inc/pico/asm_helper.d ./Core/Inc/pico/asm_helper.o ./Core/Inc/pico/btstack_hci_transport_cyw43.cyclo ./Core/Inc/pico/btstack_hci_transport_cyw43.d ./Core/Inc/pico/btstack_hci_transport_cyw43.o ./Core/Inc/pico/btstack_hci_transport_cyw43.su ./Core/Inc/pico/divider_helper.d ./Core/Inc/pico/divider_helper.o ./Core/Inc/pico/hardware_irq_test.cyclo ./Core/Inc/pico/hardware_irq_test.d ./Core/Inc/pico/hardware_irq_test.o ./Core/Inc/pico/hardware_irq_test.su ./Core/Inc/pico/hardware_pwm_test.cyclo ./Core/Inc/pico/hardware_pwm_test.d ./Core/Inc/pico/hardware_pwm_test.o ./Core/Inc/pico/hardware_pwm_test.su ./Core/Inc/pico/irq_handler_chain.d ./Core/Inc/pico/irq_handler_chain.o ./Core/Inc/pico/timeout_helper.cyclo ./Core/Inc/pico/timeout_helper.d ./Core/Inc/pico/timeout_helper.o ./Core/Inc/pico/timeout_helper.su

.PHONY: clean-Core-2f-Inc-2f-pico

