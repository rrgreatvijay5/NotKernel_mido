#!/bin/sh
#export KBUILD_COMPILER_STRING=$(/home/rrgreatvijay5/kernels/tc/clang/linux-x86/clang-r328903/bin/clang --version | head -n 1 | perl -pe 's/\(http.*?\)//gs' | sed -e 's/ */ /g' -e 's/[[:space:]]*$//')
echo $KBUILD_COMPILER_STRING
make clean O=output
make mrproper O=output
make O=output ARCH=arm64 beryllium_defconfig
make -j$(nproc --all) O=output ARCH=arm64 CC=/home/rrgreatvijay5/kernels/tc/clang/linux-x86/clang-r328903/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=/home/rrgreatvijay5/kernels/tc/aarch64-linux-android-4.9/bin/aarch64-linux-android-
