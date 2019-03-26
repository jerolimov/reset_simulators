#!/bin/bash

set -e

# Delete all devices
xcrun simctl list devices | \
	grep -E      '[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}' | \
	sed  -E 's/.*([A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}).*/\1/g' | \
	xargs -n 1 xcrun simctl delete

# Create new devices
iPhone=com.apple.CoreSimulator.SimDeviceType.iPhone
iPad=com.apple.CoreSimulator.SimDeviceType.iPad
iOS=com.apple.CoreSimulator.SimRuntime.iOS

xcrun simctl create "iPhone 5 (9.3)"               "$iPhone-5"                               "$iOS-9-3"
xcrun simctl create "iPhone 5 (10.3)"              "$iPhone-5"                               "$iOS-10-3"
xcrun simctl create "iPhone 5s (11.4)"             "$iPhone-5s"                              "$iOS-11-4"

xcrun simctl create "iPhone 8 (11.4)"              "$iPhone-8"                               "$iOS-11-4"
xcrun simctl create "iPhone 8+ (11.4)"             "$iPhone-8-Plus"                          "$iOS-11-4"
xcrun simctl create "iPhone 8 (12.2)"              "$iPhone-8"                               "$iOS-12-2"
xcrun simctl create "iPhone 8+ (12.2)"             "$iPhone-8-Plus"                          "$iOS-12-2"

xcrun simctl create "iPhone SE (12.2)"             "$iPhone-SE"                              "$iOS-12-2"
xcrun simctl create "iPhone X (12.2)"              "$iPhone-X"                               "$iOS-12-2"
xcrun simctl create "iPhone Xs (12.2)"             "$iPhone-XS"                              "$iOS-12-2"
xcrun simctl create "iPhone Xs Max (12.2)"         "$iPhone-XS-Max"                          "$iOS-12-2"
xcrun simctl create "iPhone Xʀ (12.2)"             "$iPhone-XR"                              "$iOS-12-2"

xcrun simctl create "iPad 2 (9.3)"                 "$iPad-2"                                 "$iOS-9-3"
xcrun simctl create "iPad Pro (9.7-inch) (10.3)"   "$iPad-Pro--9-7-inch-"                    "$iOS-10-3"
xcrun simctl create "iPad Pro (10.5-inch) (11.4)"  "$iPad-Pro--10-5-inch-"                   "$iOS-11-4"
xcrun simctl create "iPad Pro (12.9-inch) (12.2)"  "$iPad-Pro--12-9-inch---3rd-generation-"  "$iOS-12-2"
