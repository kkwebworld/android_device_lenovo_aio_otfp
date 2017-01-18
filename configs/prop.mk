# default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    camera.disable_zsl_mode=1 \
    persist.service.acm.enable=0 \
    persist.sys.usb.config=mtp,adb \
    ro.allow.mock.location=0 \
    ro.config.low_ram=false \
    ro.debuggable=1 \
    ro.dalvik.vm.native.bridge=0 \
    ro.mount.fs=EXT4

# build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.root_access=0

# extra log controls prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.ril.log=0 \
    ro.disable.xlog=0