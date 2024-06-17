#!/bin/sh

#  BuildXCFramework.sh
#  
#
#  Created by Mark Paul Ramirez on 6/17/24.
#  

# Delete old archives folder
rm -rf archives

# Build iOS Acrhive
xcodebuild archive \
-workspace react-native-ios-sdk.xcworkspace \
-scheme react-native-ios-sdk \
-destination "generic/platform=iOS" \
-archivePath "archives/MyFramework-iOS" \
-sdk iphoneos

# Build iPhone Simulator Archive
xcodebuild archive \
-workspace react-native-ios-sdk.xcworkspace \
-scheme react-native-ios-sdk \
-destination "generic/platform=iOS Simulator" \
-archivePath "archives/MyFramework-iOSSimulator" \
-sdk iphonesimulator

# Build XCFramework
xcodebuild \
-create-xcframework \
-archive archives/MyFramework-iOS.xcarchive \
-framework react-native-ios-sdk.framework \
-archive archives/MyFramework-iOSSimulator.xcarchive \
-framework react-native-ios-sdk.framework \
-output archives/react-native-ios-sdk.xcframework
