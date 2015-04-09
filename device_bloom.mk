$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/wiko/bloom/bloom-vendor.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

# PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_CHARACTERISTICS := phone

DEVICE_PACKAGE_OVERLAYS += device/wiko/bloom/overlay

LOCAL_PATH := device/wiko/bloom
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    libxlog

PRODUCT_PACKAGES += \
    lights.mt6582

#PRODUCT_PACKAGES += \
#    libmtkrilw

# audio

PRODUCT_PACKAGES += \
    audio.primary.mt6582

PRODUCT_PACKAGES += \
    audio_policy.default

PRODUCT_PACKAGES += \
    lib_driver_cmd_mt66xx

PRODUCT_COPY_FILES += \
    device/wiko/bloom/rootdir/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

PRODUCT_COPY_FILES += \
    device/wiko/bloom/rootdir/root/fstab.mt6582:root/fstab.mt6582 \
device/wiko/bloom/rootdir/root/init.recovery.mt6582.rc:root/init.recovery.mt6582.rc \
    device/wiko/bloom/rootdir/root/init.rc:root/init.rc \
    device/wiko/bloom/rootdir/root/init.mt6582.rc:root/init.mt6582.rc \
    device/wiko/bloom/rootdir/root/init.project.rc:root/init.project.rc \
    device/wiko/bloom/rootdir/root/init.usb.rc:root/init.usb.rc \
    device/wiko/bloom/rootdir/root/factory_init.rc:root/factory_init.rc \
    device/wiko/bloom/rootdir/root/init.fuse.rc:root/init.fuse.rc \
    device/wiko/bloom/rootdir/root/init.modem.rc:root/init.modem.rc \
    device/wiko/bloom/rootdir/root/ueventd.mt6582.rc:root/ueventd.mt6582.rc \
    device/wiko/bloom/rootdir/root/init.mt6582.usb.rc:root/init.mt6582.usb.rc \
    $(LOCAL_KERNEL):kernel

#PRODUCT_COPY_FILES += \
#	device/wiko/bloom/rootdir/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
#	device/wiko/bloom/rootdir/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
#	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
#	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
#	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
#	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
#	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
#	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
#	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
#	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
#	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    device/wiko/bloom/rootdir/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml



PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/rootdir/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/rootdir/configs/media_profiles.xml:system/etc/media_profiles.xml

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_PROPERTY_OVERRIDES := \
	ro.mediatek.version.release=ALPS.W10.24.p0 \
	ro.mediatek.platform=MT6582 \
	ro.mediatek.chip_ver=S01 \
	ro.mediatek.version.branch=KK1.MP1 \
	ro.mediatek.version.sdk=2 \
	ro.telephony.sim.count=2 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	persist.sys.usb.config=mtp,adb \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.mtk.wcn.combo.chipid=-1

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

#ADDITIONAL_DEFAULT_PROPERTIES += \
#persist.sys.usb.config=mtp
#ro.secure=1
#ro.allow.mock.location=0
#ro.debuggable=1
#persist.service.adb.enable=1
#persist.service.debuggable=1
#ro.adb.secure=1


PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    tinymix

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    setup_fs \
    e2fsck

PRODUCT_PACKAGES += Torch

PRODUCT_NAME := full_bloom
PRODUCT_DEVICE := bloom


