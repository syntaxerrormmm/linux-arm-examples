OBJ = test

CC = /usr/bin/arm-none-eabi-gcc
CFLAGS= -mcpu=cortex-m4 -mtune=cortex-m4 -mthumb -mfloat-abi=soft -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections --specs=nosys.specs

default: test

%: %.c
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f $(OBJ)
