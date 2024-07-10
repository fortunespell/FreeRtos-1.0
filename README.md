# FreeRtos-1
NUCLEO F767ZI FreeRTOS Example

This repository contains an example project for the NUCLEO F767ZI microcontroller running FreeRTOS. The project demonstrates various tasks including toggling LEDs and responding to a push button.

# Prerequisites

STM32CubeIDE: Download and install from ST's website.

FreeRTOS: Integrated within STM32CubeIDE.

# Getting Started
## 1. Clone the Repository
```
git clone https://github.com/fortunespell/FreeRtos-1
```
## 2. Open the Project in STM32CubeIDE
 
Open STM32CubeIDE.

Select File > Open Projects from File System....

Browse to the cloned repository and open it.

## 3. Configure FreeRTOS Tasks
Ensure your tasks are configured as follows:
```
void StartTask01(void)
{
    for (;;)
    {
        // Toggle LED red
        HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_14);
        vTaskDelay(pdMS_TO_TICKS(1500)); // Delay for 1500 milliseconds
    }
}

void StartTask02(void)
{
    for (;;)
    {
        // Glow the blue LED three times for 1500ms each
        for (int i = 0; i < 3; i++)
        {
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_SET); // Turn on LED
            vTaskDelay(pdMS_TO_TICKS(1500)); // Delay for 1500 milliseconds
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_RESET); // Turn off LED
            vTaskDelay(pdMS_TO_TICKS(1500)); // Delay for 1500 milliseconds
        }

        // Glow the blue LED two times for 100ms each
        for (int i = 0; i < 2; i++)
        {
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_SET); // Turn on LED
            vTaskDelay(pdMS_TO_TICKS(100)); // Delay for 100 milliseconds
            HAL_GPIO_WritePin(GPIOB, GPIO_PIN_7, GPIO_PIN_RESET); // Turn off LED
            vTaskDelay(pdMS_TO_TICKS(100)); // Delay for 100 milliseconds
        }
    }
}

void StartTask03(void)
{
    for (;;)
    {
        // Toggle LED green
        HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_0);
        vTaskDelay(pdMS_TO_TICKS(100)); // Delay for 100 milliseconds
    }
}

void StartTask04(void)
{
    for (;;)
    {
        // Check if the push button is pressed
        if (HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13) == GPIO_PIN_SET)
        {
            // If the button is pressed, blink the LED faster
            HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_14);
            vTaskDelay(pdMS_TO_TICKS(100)); // Delay for 100 milliseconds
        }
        else
        {
            // If the button is not pressed, blink the LED normally
            StartTask01();
        }
    }
}
```
## 4. Build and Debug
Click on the build button (hammer icon) to compile the project.

Click on the debug button (bug icon) to start a debug session.

Ensure proper configurations for FreeRTOS in the project settings.

## 5. Run the Program
Start the debug session.

Observe the behavior of the LEDs and the response to the push button press.

## Tasks Description
#### Task 01: 
Toggles the red LED every 1500 milliseconds.

#### Task 02:
Blinks the blue LED three times for 1500 milliseconds each. ----> Blinks the blue LED two times for 100 milliseconds each.

#### Task 03: 
Toggles the green LED every 100 milliseconds.

#### Task 04: 
Checks if the push button is pressed and toggles the red LED accordingly:

If pressed, toggles every 100 milliseconds ---> If not pressed, runs StartTask01 to toggle every 1500 milliseconds.

 
