#!/bin/bash

ANDROID_NATIVE_API=android-23
TOOL_CHAIN_FILE="${ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake"

rm -rf build_android
mkdir -p build_android 
cd build_android
cmake -DDEBUG=NO \
    -DCMAKE_TOOLCHAIN_FILE=${TOOL_CHAIN_FILE} \
    -DANDROID_NDK=${ANDROID_NDK_HOME} \
    -DANDROID_ABI=$1 \
    -DANDROID_NATIVE_API_LEVEL=${ANDROID_NATIVE_API} \
    -DANDROID_STL=c++_static \
    ..
make
