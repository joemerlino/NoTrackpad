include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NoTrackpadPrefs
NoTrackpadPrefs_FILES = NTPrefsRootListController.m
NoTrackpadPrefs_INSTALL_PATH = /Library/PreferenceBundles
NoTrackpadPrefs_FRAMEWORKS = UIKit
NoTrackpadPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NoTrackpadPrefs.plist$(ECHO_END)
