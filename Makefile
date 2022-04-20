export TARGET=iphone:clang:10.3
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HideAllDots10
HideAllDots10_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
