cmake_minimum_required(VERSION 3.10)

# 设置项目名称
project(MyProject)

# 指定 Clang 编译器的路径
set(CMAKE_C_COMPILER "$ENV{ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang")
set(CMAKE_CXX_COMPILER "$ENV{ANDROID_NDK}/toolchains/llvm/prebuilt/linux-x86_64/bin/clang++")

# 设置默认构建类型为调试
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Debug)
endif()

# 设置编译选项
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -mllvm -fla -mllvm -split -mllvm -split_num=3")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -mllvm -fla -mllvm -split -mllvm -split_num=3")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -mllvm -sobf")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -mllvm -sobf")

# 添加可执行文件
add_executable(MyExecutable main.cpp)
