#!/bin/sh

#  Build.sh
#  
#
#  Created by Mark Paul Ramirez on 6/17/24.
#

# Delete old archives folder
rm -rf archives

# Build iOS Acrhive
xcodebuild archive \
-workspace ReactNativeSDK.xcworkspace \
-scheme ReactNativeSDK \
-destination "generic/platform=iOS" \
-archivePath "archives/MyFramework-iOS" \
-sdk iphoneos

# Build iPhone Simulator Archive
xcodebuild archive \
-workspace ReactNativeSDK.xcworkspace \
-scheme ReactNativeSDK \
-destination "generic/platform=iOS Simulator" \
-archivePath "archives/MyFramework-iOSSimulator" \
-sdk iphonesimulator

# Build XCFramework
xcodebuild \
-create-xcframework \
-archive archives/MyFramework-iOS.xcarchive \
-framework ReactNativeSDK.framework \
-archive archives/MyFramework-iOSSimulator.xcarchive \
-framework ReactNativeSDK.framework \
-output archives/ReactNativeSDK.xcframework
