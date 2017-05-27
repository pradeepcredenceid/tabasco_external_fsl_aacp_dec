ifeq ($(PREBUILT_FSL_IMX_CODEC),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
ifeq ($(BOARD_SOC_TYPE),IMX8DQ)

LOCAL_MODULE := lib_aacplus_dec_v2_arm11_elinux
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib
LOCAL_SRC_FILES_32 := lib_aacplus_dec_v2_arm11_elinux.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := lib_aacplusd_wrap_arm12_elinux_android
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MULTILIB := 32
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib
LOCAL_SRC_FILES_32 := lib_aacplusd_wrap_arm12_elinux_android.so
include $(BUILD_PREBUILT)

else
LOCAL_PREBUILT_LIBS := \
		lib_aacplus_dec_v2_arm11_elinux.so \
        lib_aacplusd_wrap_arm12_elinux_android.so

LOCAL_MODULE_TAGS := eng
include $(BUILD_MULTI_PREBUILT)

endif
endif
