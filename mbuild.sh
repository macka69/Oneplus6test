#1/bin/bash

if [[ -d "out" ]]
then
     cd out && make clean && make distclean && make mrproper
else
     mkdir -p out
fi

make O=out ARCH=arm64 macka_defconfig


PATH="${HOME}Desktop/tc-build/install/bin:/home/macka/Desktop/android-kernel/aarch64-linux-android-4.9/bin:/home/macka/Desktop/android-kernel/arm-linux-androideabi-4.9/bin:${PATH}"  \

make -j$(nproc --all) O=out \
			ARCH=arm64 \
			CC=clang \
			CLANG_TRIPLE=aarch64-linux-gnu- \
			CROSS_COMPILE=aarch64-linux-android- \
			CROSS_COMPILE_ARM32=arm-linux-androideabi- 2>&1 | tee output.txt

		        
			

			
			
			
			
			

