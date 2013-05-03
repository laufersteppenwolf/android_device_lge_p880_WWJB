# Inherit common CM stuff
$(call inherit-product, vendor/cm/config/common.mk)

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Bring in all video files
$(call inherit-product, frameworks/base/data/videos/VideoPackage2.mk)

# Include CM audio files
include vendor/cm/config/cm_audio.mk

# Optional CM packages
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam

# Copy themes
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/app/Crystal2.apk:system/app/Crystal2.apk

# Call theme from build.prop
PRODUCT_PROPERTY_OVERRIDES += \
       persist.sys.themeID=Crystal2 \
       persist.sys.themePackageName=com.darkdog.theme.crystal2
       
# Install LG's Memo app
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/app/Memobin.apk:system/app/Memo.apk \
    vendor/cm/prebuilt/common/framework/com.lge.app.floating.res.apk:system/framework/com.lge.app.floating.res.apk \
    vendor/cm/prebuilt/common/etc/permissions/com.lge.app.floating.xml:system/etc/permissions/com.lge.app.floating.xml
    
# Copy Tweaks
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.d/91UnlinkGPU:system/etc/init.d/91UnlinkGPU
    
# Install GPS Country Optimizer by djnilse, RingLocker by AChep and ButtonLED by GermainZ
PRODUCT_COPY-FILES += \
    vendor/cm/prebuilt/common/app/GPSCountryOptimizer.apk:system/app/GPSCountryOptimizer.apk \
    vendor/cm/prebuilt/common/app/RingLocker.apk:system/app/RingLocker.apk \
    vendor/cm/prebuilt/common/app/ButtonLED.apk:system/app/ButtonLED.apk \
  
# Install APEX and ES File Explorer
PRODUCT_COPY-FILES += \
    vendor/cm/prebuilt/common/app/Apex.apk:system/app/Apex.apk \
    vendor/cm/prebuilt/common/app/ESFileExplorer.apk:system/app/ESFileExplorer.apk \
