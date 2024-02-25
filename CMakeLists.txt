cmake_minimum_required(VERSION 3.14)
include(FetchContent)

project(MyProject LANGUAGES C CXX)

# Build an executable called "MyFirmware"
add_executable(MyFirmware src/main.c)

# Specify path to own LVGL config header
set(LV_CONF_PATH
    ${CMAKE_CURRENT_SOURCE_DIR}/src/lv_conf.h
    CACHE STRING "" FORCE)

# Fetch LVGL from GitHub
FetchContent_Declare(lvgl URL https://github.com/lvgl/lvgl.git)
FetchContent_MakeAvailable(lvgl)

# The target "MyFirmware" depends on LVGL
target_link_libraries(MyFirmware PRIVATE lvgl::lvgl)