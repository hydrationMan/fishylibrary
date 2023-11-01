TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FishyLibrary

BUNDLE_NAME = com.hydrate.fishylibrary
com.hydrate.fishylibrary_INSTALL_PATH = /Library/Application Support/
include $(THEOS)/makefiles/bundle.mk

FishyLibrary_FILES = Tweak.x
FishyLibrary_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
