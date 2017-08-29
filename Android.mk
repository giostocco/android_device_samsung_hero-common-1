LOCAL_PATH := $(call my-dir)

ifneq ($(filter exynos8890, $(TARGET_SOC)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
