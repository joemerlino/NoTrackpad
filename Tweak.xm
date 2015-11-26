%hook _UIKeyboardTextSelectionGestureController
- (BOOL)suppressTwoFingerPan{
	return YES;
}
%end

static void PreferencesCallback(CFNotificationCenterRef center, void *observer, CFStringRef name, const void *object, CFDictionaryRef userInfo)
{
	CFPreferencesAppSynchronize(CFSTR("com.joemerlino.notrackpad"));
}

%ctor
{
	CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, PreferencesCallback, CFSTR("com.joemerlino.notrackpad.preferencechanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
	NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/private/var/mobile/Library/Preferences/com.joemerlino.notrackpad.plist"];
	BOOL suppress = ([prefs objectForKey:@"suppress"] ? [[prefs objectForKey:@"suppress"] boolValue] : YES);
	if(suppress)
		%init();
}