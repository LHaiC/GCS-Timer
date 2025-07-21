#!/bin/bash

# -g: 告诉主机编译器 (g++) 生成 CPU 代码的调试信息
# -G: 告诉设备编译器 (nvcc) 生成 GPU 代码的调试信息，并关闭优化
# -O0: 关闭所有编译优化，确保代码执行顺序和源码一致，便于调试
# -ccbin 和 -Xlinker 保持不变，确保编译器和链接路径正确

nvcc src/main.cpp \
    -ccbin g++ \
    -g \
    -G \
    -O0 \
    -x cu \
    -arch=sm_80 \
    -o GCS_Timer_debug \
    -std=c++14 \
