#!/bin/sh

FILES=(
    soomla-unity3d-profile.unitypackage
    Soomla/Assets/Plugins/iOS/FacebookSDK.framework
    Soomla/Assets/Plugins/iOS/libSTTwitter.a
    deploy/out
    FacebookSDK-140401.unitypackage
    Soomla/Assets/Plugins/iOS/libSoomlaIOSStore.a
    Soomla/Assets/Plugins/iOS/libSoomlaiOSProfile.a
    Soomla/Assets/Plugins/iOS/libSoomlaiOSCore.a
    soomla-native/projects/unity-ios-store/build
    soomla-native/projects/unity-android-store/build
    Soomla/Assets/Plugins/iOS/libSoomlaiOSProfileFacebook.a
    soomla-unity3d-core.unitypackage
    Soomla/Assets/Plugins/iOS/libSoomlaiOSProfileTwitter.a
    Soomla/Assets/Plugins/iOS/libUnityiOSStore.a
    Soomla/Assets/Plugins/Android/twitter4j-core-4.0.2.jar
    Soomla/Assets/Plugins/Android/socialauth-4.4.jar
    Soomla/Assets/Plugins/Android/twitter4j-asyc-4.0.2.jar
    Soomla/Assets/Plugins/iOS/libUnityiOSProfile.a
    Soomla/Assets/Plugins/Android/AndroidProfileFacebook.jar
    Soomla/Assets/Plugins/Android/AndroidStoreGooglePlay.jar
    Soomla/Assets/Plugins/Android/SoomlaAndroidCore.jar
    Soomla/Assets/Plugins/Android/square-otto-1.3.2.jar
    Soomla/Assets/Plugins/Android/AndroidProfileTwitter.jar
    Soomla/Assets/Plugins/Android/simple.facebook-2.1.jar
    Soomla/Assets/Plugins/Android/AndroidStore.jar
    Soomla/Assets/Plugins/Android/AndroidProfile.jar
    Soomla/Assets/Plugins/Android/socialauth-android-3.2.jar
    Soomla/Assets/Plugins/Android/AndroidProfileSocialAuth.jar
    Soomla/Assets/Soomla/compilations
)

./pruner.sh ${FILES[@]}
