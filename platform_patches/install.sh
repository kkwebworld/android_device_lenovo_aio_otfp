echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic external/wpa_supplicant_8/src/drivers external/wpa_supplicant_8/wpa_supplicant frameworks/av frameworks/native system/core system/netd vendor/cm"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/lenovo/aio_otfp/platform_patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
