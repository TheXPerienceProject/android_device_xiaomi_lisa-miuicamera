#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Namespace
PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/lisa-miuicamera

# Permissions
PRODUCT_COPY_FILES += \
    device/xiaomi/lisa-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    device/xiaomi/lisa-miuicamera/configs/default-permissions/miuicamera-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuicamera-permissions.xml \
    device/xiaomi/lisa-miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml
# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    persist.vendor.camera.privapp.list=org.codeaurora.snapcam,com.android.camera \
    ro.miui.notch=1 \
    ro.product.mod_device=lisa

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    device/xiaomi/lisa-miuicamera/sepolicy/vendor

$(call inherit-product, vendor/xiaomi/lisa-miuicamera/lisa-miuicamera-vendor.mk)
