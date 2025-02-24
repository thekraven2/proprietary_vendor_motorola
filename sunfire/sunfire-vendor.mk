# Live wallpaper packages
PRODUCT_PACKAGES := \
    Usb \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    VisualizationWallpapers \
    librs_jni

# apps
PRODUCT_PACKAGES := \
    FileManager 

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES := \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Pick up overlay for features that depend on non-open-source files
DEVICE_PACKAGE_OVERLAYS := vendor/moto/sunfire/overlay

$(call inherit-product, vendor/moto/sunfire/sunfire-vendor-blobs.mk)
