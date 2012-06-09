PRODUCT_VERSION_MAJOR = 2
PRODUCT_VERSION_MINOR = 2.1
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=GWK74

ifdef CYANOGEN_NIGHTLY
    CMVERSION := MiniCM7-$(shell date +%Y%m%d)-NIGHTLY-$(CM_BUILD)
else
    ifdef CYANOGEN_RELEASE
        CMVERSION := MiniCM7-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(CM_BUILD)
    else
        CMVERSION := MiniCM7-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(CM_BUILD)-UNOFFICIAL
    endif
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=$(CMVERSION)
