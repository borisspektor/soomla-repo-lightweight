#!/bin/sh

FILES=(
     build/
     soomla-native/
     development/soomla-native/projects/cocos2dx-ios-core/build
     development/soomla-native/projects/cocos2dx-android-core/build

     development/soomla-native/projects/cocos2dx-ios-store/build
     development/soomla-native/projects/cocos2dx-android-store/build
     cocos2dx-store

     developement/soomla-native/projects/cocos2dx-ios-profile/build
     developement/soomla-native/projects/cocos2dx-android-profile/build
     development/soomla-native/projects/cocos2dx-ios-profile/build
     development/soomla-native/projects/cocos2dx-android-profile/build
)

./pruner.sh ${FILES[@]}
