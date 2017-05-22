echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic external/wpa_supplicant_8/src/drivers external/wpa_supplicant_8/wpa_supplicant frameworks/av frameworks/native system/core system/netd vendor/cm"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git reset --hard
	git clean -f -d
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
