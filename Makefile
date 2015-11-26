include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoTrackpad
NoTrackpad_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += notrackpadprefs
SUBPROJECTS += notrackpadtoggle
include $(THEOS_MAKE_PATH)/aggregate.mk
