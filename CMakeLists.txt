cmake_minimum_required(VERSION 3.10)

project(MyProject)

set(CMAKE_C_COMPILER "$ENV{ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang")
set(CMAKE_CXX_COMPILER "$ENV{ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++")

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

# 设置调试编译选项
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -mllvm -sobf")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -mllvm -sobf")

# 添加可执行文件
add_executable(MyExecutable main.cpp)

# 调试输出
message(STATUS "CMAKE_CXX_FLAGS_DEBUG: ${CMAKE_CXX_FLAGS_DEBUG}")
