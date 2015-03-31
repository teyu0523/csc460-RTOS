#!/bin/bash

# echo "Clean..."
# rm -f *.o
# rm -f *.elf
# rm -f *.hex

echo "Compile..."
C:"\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-gcc" -Wall -O2 -DF_CPU=16000000UL -mmcu=atmega2560 -c project2.cpp -o project2.o
C:"\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-gcc" -Wall -O2 -DF_CPU=16000000UL -mmcu=atmega2560 -c os.cpp -o os.o

echo "Link..."
C:"\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-gcc" -Wall -O2 -DF_CPU=16000000UL -mmcu=atmega2560 -o project2.elf os.o project2.o

echo "Make HEX..."
C:"\Program Files (x86)\Arduino\hardware\tools\avr\bin\avr-objcopy" -j .text -j .data -O ihex project2.elf project2.hex

echo "Uploading..."
sudo C:"\Program Files (x86)\Arduino\hardware\tools\avr\bin\avrdude" -p ATMEGA2560 -c wiring -P COM3 -U flash:w:C:"\Users\Mikko\Documents\CSC460\Project 1\csc460-RTOS\Project 2\atmel\project2\project2\Debug\project2.hex":i