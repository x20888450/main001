cmake_minimum_required(VERSION 3.10)

# 设置项目名称
project(MyProject)

# 添加可执行文件
add_executable(MyExecutable main.cpp)

# 设置编译选项
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -mllvm -fla -mllvm -split -mllvm -split_num=3")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -mllvm -fla -mllvm -split -mllvm -split_num=3")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -mllvm -sobf")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -mllvm -sobf")
