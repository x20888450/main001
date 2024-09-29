cmake_minimum_required(VERSION 3.10)

project(MyProject)

# 设置发布编译选项，保留原有选项
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} mllvm -sobf")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} mllvm -sobf")

# 添加可执行文件
add_executable(MyExecutable main.cpp)

# 调试输出
message(STATUS "CMAKE_CXX_FLAGS_RELEASE: ${CMAKE_CXX_FLAGS_RELEASE}")
