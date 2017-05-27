
Build into android rootfs image.

Step 1: Install codec library.

	tar xzvf fsl_aacp_dec.tar.gz
	cp -r fsl_aacp_dec/ ~/myandroid/external
	cd ~/myandroid
	source build/envsetup.sh
	lunch // and select build name from menu
	make

