cmake_minimum_required(VERSION 3.19)

include(pico_sdk_import.cmake)

project(snake_game)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 11)

pico_sdk_init()
add_subdirectory(pico-ssd1306)
add_executable(snake_game
src/main.cpp)

target_include_directories(snake_game PUBLIC inc/)

pico_enable_stdio_usb(snake_game 1)
pico_enable_stdio_uart(snake_game 0)

pico_add_extra_outputs(snake_game)

target_link_libraries(snake_game pico_stdlib hardware_gpio hardware_i2c pico_ssd1306)