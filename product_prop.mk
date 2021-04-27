# Adb
ifeq ($(TARGET_BUILD_VARIANT),eng)
# /vendor/default.prop is force-setting ro.adb.secure=1
# Get rid of that by overriding it on eng builds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0
endif

# Assertive display
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.display.ad=1 \
    ro.vendor.display.sensortype=2 \
    ro.vendor.display.ad.sdr_calib_data=/vendor/etc/OPPO_OLED_AD_calib.cfg

# Boot
PRODUCT_PRODUCT_PROPERTIES += \
   sys.vendor.shutdown.waittime=500

# Audio
PRODUCT_PRODUCT_PROPERTIES += \
   ro.config.vc_call_vol_steps=7 \
   ro.config.media_vol_steps=25

# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.sf.hw=1 \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_hwc_vds=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.enable_gl_backpressure=1 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    sdm.debug.disable_skip_validate=1 \
    vendor.display.enable_default_color_mode=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    vendor.display.disable_skip_validate=1

# HAL1 apps list
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.camera.hal1.packagelist=com.intsig.camscanner,com.instagram.android,net.one97.paytm

# IMS Debug
PRODUCT_PROPERTY_OVERRIDES += \
   persist.dbg.volte_avail_ovr=1 \
   persist.dbg.vt_avail_ovr=1 \
   persist.dbg.wfc_avail_ovr=1

# Media
PRODUCT_PRODUCT_PROPERTIES += \
    media.settings.xml=/vendor/etc/media_profiles_V1_0.xml \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    debug.stagefright.ccodec=0


# Netflix
PRODUCT_PRODUCT_PROPERTIES += \
    ro.netflix.bsp_rev=Q660-13149-1
	
# Memory optimizations
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.sys.fw.bservice_enable=true \
    ro.sys.fw.bservice_limit=5 \
    ro.sys.fw.bservice_age=5000 \
    ro.am.reschedule_service=true \ 
    ro.config.fha_enable=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \ 
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \ 
    ro.config.sdha_apps_bg_min=8 \


# Perf
PRODUCT_PRODUCT_PROPERTIES += \
    vendor.iop.enable_prefetch_ofr=0 \
    vendor.iop.enable_uxe=0

# Radio
PRODUCT_PRODUCT_PROPERTIES += \
    DEVICE_PROVISIONED=1 \
    ro.telephony.default_network=22,22 \
    persist.vendor.radio.lte_vrte_ltd=1 \
    persist.vendor.radio.cs_srv_type=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.force_on_dc=true \
    persist.vendor.radio.redir_party_num=1 \
    ril.subscription.types=NV,RUIM \
    telephony.lteOnCdmaDevice=1

# UI
PRODUCT_PRODUCT_PROPERTIES += \
    sys.use_fifo_ui=1

# Dalvik Heap
PRODUCT_PRODUCT_PROPERTIES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \ 
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m
