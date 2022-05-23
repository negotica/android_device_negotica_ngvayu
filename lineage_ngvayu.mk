$(call inherit-product, device/xiaomi/vayu/lineage_vayu.mk)

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

PRODUCT_NAME := lineage_ngvayu

PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.usb.config=mtp,adb \
    persist.sys.language=nl \
    persist.sys.country=NL \
    persist.sys.timezone=Europe/Amsterdam \
    persist.sys.locale=nl-NL

PRODUCT_ADB_KEYS := $(LOCAL_PATH)/adb/adbkey.pub

PRODUCT_LOCALES := nl_NL en_US

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/adb_root.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/adb_root.rc

PRODUCT_PACKAGES += \
    RemoveApps \
    SystemUIOverlay \
    Launcher3Overlay
