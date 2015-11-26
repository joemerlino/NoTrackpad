include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NoTrackpadToggle
NoTrackpadToggle_FILES = Switch.xm
NoTrackpadToggle_FRAMEWORKS = UIKit
NoTrackpadToggle_LIBRARIES = flipswitch
NoTrackpadToggle_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk


after-install::
	install.exec "killall -9 SpringBoard"
