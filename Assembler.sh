#! /usr/bin/env bash
clear
echo "Mounting bootloader..."
nasm -f bin boot/loader/bootloader.asm -o bin/bootloader.bin
echo "Mounting kernel..."
nasm -f bin sys/kernel/kernel.asm -o bin/kernel.bin
read
