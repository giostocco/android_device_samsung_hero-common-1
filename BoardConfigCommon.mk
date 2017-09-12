LOCAL_PATH := device/samsung/hero-common

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Properties
TARGET_SYSTEM_PROP := device/samsung/hero-common/system.prop

# SELinux
BOARD_SEPOLICY_DIRS := device/samsung/hero-common/sepolicy

# SECComp filters
BOARD_SECCOMP_POLICY += device/samsung/hero-common/seccomp

# Collect splitted Board Configs at ./board/
-include device/samsung/hero-common/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/hero-common/BoardConfigVendor.mk

# WFD
BOARD_USES_WFD := true
