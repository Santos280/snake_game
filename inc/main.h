#include<stdio.h>
#include<math.h>
//#include<string>
#include "pico/stdlib.h"
#include "hardware/gpio.h"
#include "hardware/i2c.h"
#include "pico/time.h"
#include "../pico-ssd1306/ssd1306.h"
#include "../pico-ssd1306/textRenderer/TextRenderer.h"
#include "../pico-ssd1306/shapeRenderer/ShapeRenderer.h"

#define LEFT_BUTTON   6
#define RIGHT_BUTTON    7
#define UP_BUTTON   8
#define DOWN_BUTTON 9