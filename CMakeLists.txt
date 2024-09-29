cmake_minimum_required(VERSION 3.10)

project(MyProject)

# 设置 Clang 和 Clang++ 为编译器
set(CMAKE_C_COMPILER "$ENV{ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang")
set(CMAKE_CXX_COMPILER "$ENV{ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++")

# 设置默认构建类型为 Release
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

# 设置发布编译选项，保留原有选项
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -mllvm -irobf-cse")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mllvm -irobf-cse")

# 添加可执行文件
add_executable(MyExecutable main.cpp)

# 调试输出
message(STATUS "CMAKE_CXX_FLAGS_RELEASE: ${CMAKE_CXX_FLAGS_RELEASE}")
