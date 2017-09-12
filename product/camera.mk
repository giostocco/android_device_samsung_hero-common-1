PRODUCT_PACKAGES += \
	camera.exynos5 \
	Snap

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
	frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml

# build.prop
PRODUCT_PROPERTY_OVERRIDES += \
	camera.hal1.packagelist=com.skype.raider,com.whatsapp,com.cyworld.camera,org.cyanogenmod.snap,com.google.android.GoogleCamera,org.telegram.plus,org.telegram.messenger
 
