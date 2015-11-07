#!/bin/sh

FILES=(
    *.unitypackage
	deploy/out/
	soomla-native/projects/unity-ios-store/
	soomla-native/projects/unity-android-store/
	soomla-native/projects/unity-ios-levelup/build/
	soomla-native/projects/unity-android-levelup/build/
	Soomla/Assets/Plugins/iOS/libUnityiOSLevelUp.a
	Soomla/Assets/Plugins/Android/AndroidStoreGooglePlay.jar
	Soomla/Assets/Plugins/Android/SoomlaAndroidCore.jar
	Soomla/Assets/Plugins/Android/UnityAndroidLevelUp.jar
)

./pruner.sh ${FILES[@]}
