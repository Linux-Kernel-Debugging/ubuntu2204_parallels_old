#!/bin/bash
KERNEL_TOP_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
OUTPUT="$KERNEL_TOP_PATH/out"
echo "$OUTPUT"

cd linux
sudo make O=$OUTPUT modules_install
sudo cp $OUTPUT/arch/arm/boot/dts/*.dtb /boot/
sudo cp $OUTPUT/arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
sudo cp $OUTPUT/arch/arm/boot/zImage /boot/kernel7.img
