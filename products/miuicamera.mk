#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/spes-miuicamera/configs/default-permissions/miuicamera-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuicamera-permissions.xml \
    vendor/xiaomi/spes-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Sysconfig
PRODUCT_COPY_FILES += \
    vendor/xiaomi/spes-miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml

# Props
PRODUCT_PRODUCT_PROPERTIES += \
	ro.com.google.lens.oem_camera_package=com.android.camera \
        ro.miui.notch=1

PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.android.camera \
    vendor.camera.aux.packagelist=com.android.camera

$(call inherit-product, vendor/xiaomi/spes-miuicamera/common/common-vendor.mk)
