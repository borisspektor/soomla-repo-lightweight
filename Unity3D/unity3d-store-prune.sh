#!/bin/sh

FILES=(
	*.unitypackage
    Soomla/Assets/Plugins/iOS/libSoomlaIOSStore.a
    Soomla/Assets/Soomla/compilations
    deploy/out/
    unity3.5/
    Soomla/Assets/Plugins/iOS/libSoomlaIOSCore.a
    Soomla/Assets/Plugins/Android/square-otto-1.3.2.jar
    Soomla/Assets/Plugins/Android/SoomlaAndroidCore.jar
    unity4.0/
    Soomla/Assets/Plugins/iOS/libUnityiOSStore.a
    Soomla/Assets/Plugins/Android/AndroidStoreGooglePlay.jar
    Soomla/Assets/Plugins/Android/UnityAndroidStore.jar
    Soomla/Assets/Plugins/Newtonsoft.Json.dll
    Soomla/Assets/Plugins/WP8/Newtonsoft.Json.dll
    soomla-native/compilations/
    soomla-native/android/
    soomla-native/ios/
    soomla-native/projects/unity-wp8-fake-assembly/wp-store/packages/Newtonsoft.Json.6.0.4
    Soomla/Assets/Plugins/Android/AndroidStore.jar
    Soomla/Assets/Plugins/Android/Soomla.jar
    soomla-native/projects/ios-store/build
    src/
    Soomla/Assets/Plugins/WP8/wp-store.dll
    Soomla/Assets/Plugins/WP8/soomla-wp-core.dll
)

./pruner.sh ${FILES[@]}
