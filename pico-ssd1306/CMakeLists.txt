cmake_minimum_required(VERSION 3.12)
include(pico_sdk_import.cmake)

project(pico_ssd1306_test C CXX ASM)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

pico_sdk_init()
add_library(pico_ssd1306
        ssd1306.cpp
        frameBuffer/FrameBuffer.cpp
        shapeRenderer/ShapeRenderer.cpp
        textRenderer/TextRenderer.cpp
        textRenderer/5x8_font.h textRenderer/8x8_font.h textRenderer/12x16_font.h textRenderer/16x32_font.h)

target_link_libraries(pico_ssd1306
        hardware_i2c
        pico_stdlib
        )
target_include_directories (pico_ssd1306 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})