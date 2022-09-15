all: armv6 armv7 arm64

armv6:
	arm-none-eabi-as -march=armv6 -mthumb --fatal-warnings -o ../../src/ipwndfu/bin/steaks4uce-shellcode.o steaks4uce-shellcode.S
	arm-none-eabi-objcopy -O binary ../../src/ipwndfu/bin/steaks4uce-shellcode.o ../../src/ipwndfu/bin/steaks4uce-shellcode.bin
	rm ../../src/ipwndfu/bin/steaks4uce-shellcode.o

armv7:
	arm-none-eabi-as -mthumb --fatal-warnings -o ../../src/ipwndfu/bin/limera1n-shellcode.o limera1n-shellcode.S
	arm-none-eabi-objcopy -O binary ../../src/ipwndfu/bin/limera1n-shellcode.o ../../src/ipwndfu/bin/limera1n-shellcode.bin
	rm ../../src/ipwndfu/bin/limera1n-shellcode.o

	arm-none-eabi-as -mthumb --fatal-warnings -o ../../src/ipwndfu/bin/SHAtter-shellcode.o SHAtter-shellcode.S
	arm-none-eabi-objcopy -O binary ../../src/ipwndfu/bin/SHAtter-shellcode.o ../../src/ipwndfu/bin/SHAtter-shellcode.bin
	rm ../../src/ipwndfu/bin/SHAtter-shellcode.o

	arm-none-eabi-as -mthumb --fatal-warnings -o ../../src/ipwndfu/bin/24Kpwn-shellcode.o 24Kpwn-shellcode.S
	arm-none-eabi-objcopy -O binary ../../src/ipwndfu/bin/24Kpwn-shellcode.o ../../src/ipwndfu/bin/24Kpwn-shellcode.bin
	rm ../../src/ipwndfu/bin/24Kpwn-shellcode.o

	arm-none-eabi-as -mthumb --fatal-warnings -o ../../src/ipwndfu/bin/alloc8-shellcode.o alloc8-shellcode.S
	arm-none-eabi-objcopy -O binary ../../src/ipwndfu/bin/alloc8-shellcode.o ../../src/ipwndfu/bin/alloc8-shellcode.bin
	rm ../../src/ipwndfu/bin/alloc8-shellcode.o

	arm-none-eabi-as -mthumb --fatal-warnings -o ../../src/ipwndfu/bin/ibss-flash-nor-shellcode.o ibss-flash-nor-shellcode.S
	arm-none-eabi-objcopy -O binary ../../src/ipwndfu/bin/ibss-flash-nor-shellcode.o ../../src/ipwndfu/bin/ibss-flash-nor-shellcode.bin
	rm ../../src/ipwndfu/bin/ibss-flash-nor-shellcode.o

	arm-none-eabi-as -mthumb --fatal-warnings -o ../../src/ipwndfu/bin/usb_0xA1_2_armv7.o usb_0xA1_2_armv7.S
	arm-none-eabi-objcopy -O binary ../../src/ipwndfu/bin/usb_0xA1_2_armv7.o ../../src/ipwndfu/bin/usb_0xA1_2_armv7.bin
	rm ../../src/ipwndfu/bin/usb_0xA1_2_armv7.o

	arm-none-eabi-as -mthumb --fatal-warnings -o ../../src/ipwndfu/bin/checkm8_armv7.o checkm8_armv7.S
	arm-none-eabi-objcopy -O binary ../../src/ipwndfu/bin/checkm8_armv7.o ../../src/ipwndfu/bin/checkm8_armv7.bin
	rm ../../src/ipwndfu/bin/checkm8_armv7.o

arm64:
	xcrun -sdk iphoneos clang usb_0xA1_2_arm64.S -target arm64-apple-darwin -Wall -o ../../src/ipwndfu/bin/usb_0xA1_2_arm64.o
	gobjcopy -O binary -j .text ../../src/ipwndfu/bin/usb_0xA1_2_arm64.o ../../src/ipwndfu/bin/usb_0xA1_2_arm64.bin
	rm ../../src/ipwndfu/bin/usb_0xA1_2_arm64.o

	xcrun -sdk iphoneos clang checkm8_arm64.S -target arm64-apple-darwin -Wall -o ../../src/ipwndfu/bin/checkm8_arm64.o
	gobjcopy -O binary -j .text ../../src/ipwndfu/bin/checkm8_arm64.o ../../src/ipwndfu/bin/checkm8_arm64.bin
	rm ../../src/ipwndfu/bin/checkm8_arm64.o

	xcrun -sdk iphoneos clang checkm8_nopaddingcorruption_arm64.S -target arm64-apple-darwin -Wall -o ../../src/ipwndfu/bin/checkm8_nopaddingcorruption_arm64.o
	gobjcopy -O binary -j .text ../../src/ipwndfu/bin/checkm8_nopaddingcorruption_arm64.o ../../src/ipwndfu/bin/checkm8_nopaddingcorruption_arm64.bin
	rm ../../src/ipwndfu/bin/checkm8_nopaddingcorruption_arm64.o

	xcrun -sdk iphoneos clang t8010_t8011_disable_wxn_arm64.S -target arm64-apple-darwin -Wall -o ../../src/ipwndfu/bin/t8010_t8011_disable_wxn_arm64.o
	gobjcopy -O binary -j .text ../../src/ipwndfu/bin/t8010_t8011_disable_wxn_arm64.o ../../src/ipwndfu/bin/t8010_t8011_disable_wxn_arm64.bin
	rm ../../src/ipwndfu/bin/t8010_t8011_disable_wxn_arm64.o

	xcrun -sdk iphoneos clang s8001_disable_wxn_arm64.S -target arm64-apple-darwin -Wall -o ../../src/ipwndfu/bin/s8001_disable_wxn_arm64.o
	gobjcopy -O binary -j .text ../../src/ipwndfu/bin/s8001_disable_wxn_arm64.o ../../src/ipwndfu/bin/s8001_disable_wxn_arm64.bin
	rm ../../src/ipwndfu/bin/s8001_disable_wxn_arm64.o

	xcrun -sdk iphoneos clang t8015_shellcode_arm64.S -target arm64-apple-darwin -Wall -o ../../src/ipwndfu/bin/t8015_shellcode_arm64.o
	gobjcopy -O binary -j .text ../../src/ipwndfu/bin/t8015_shellcode_arm64.o ../../src/ipwndfu/bin/t8015_shellcode_arm64.bin
	rm ../../src/ipwndfu/bin/t8015_shellcode_arm64.o

	xcrun -sdk iphoneos clang boot_arm64.S -target arm64-apple-darwin -Wall -o ../../src/ipwndfu/bin/boot_arm64.o
	gobjcopy -O binary -j .text ../../src/ipwndfu/bin/boot_arm64.o ../../src/ipwndfu/bin/boot_arm64.bin
	rm ../../src/ipwndfu/bin/boot_arm64.o
