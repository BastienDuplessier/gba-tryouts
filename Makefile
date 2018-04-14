default: compile link strip fix

compile:
	arm-none-eabi-gcc -c main.c -mthumb-interwork -mthumb -O2 -o main.o

link:
	arm-none-eabi-gcc main.o -mthumb-interwork -mthumb -specs=gba.specs -o main.elf

strip:
	arm-none-eabi-objcopy -v -O binary main.elf main.gba

fix:
	gbafix main.gba

run:
	VisualBoyAdvance main.gba

