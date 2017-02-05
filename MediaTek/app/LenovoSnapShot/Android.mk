# We need these apps to be signed with platform cerificate, so let's use the build system
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := LenovoSnapShot
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE_SUFFIX := .apk
LOCAL_SRC_FILES     := LenovoSnapShot.apk
LOCAL_MODULE_PATH   := $(PRODUCT_OUT)/system/priv-app
include $(BUILD_PREBUILT)