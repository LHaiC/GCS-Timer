#!/bin/bash

# 编译 CUDA 程序：GCS_Timer
nvcc src/main.cpp -x cu -arch=sm_80 -o GCS_Timer -std=c++14 -O3