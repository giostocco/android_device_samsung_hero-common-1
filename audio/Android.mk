LOCAL_PATH := $(call my-dir)

# Audio HAL
include $(CLEAR_VARS)

LOCAL_MODULE := audio.primary.$(TARGET_BOOTLOADER_BOARD_NAME)
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := audio_hw.c ril_interface.c

LOCAL_C_INCLUDES += \
	external/tinyalsa/include \
	$(call include-path-for, audio-effects) \
	$(call include-path-for, audio-utils) \
	$(call include-path-for, audio-route) \
	hardware/samsung/ril/libsecril-client

LOCAL_SHARED_LIBRARIES := liblog libcutils libtinyalsa libaudioutils libdl \
	libaudioroute libsecril-client

include $(BUILD_SHARED_LIBRARY)
