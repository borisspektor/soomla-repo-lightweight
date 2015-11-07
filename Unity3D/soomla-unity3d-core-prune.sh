#!/bin/sh

FILES=(
	soomla-unity3d-core.unitypackage 
	deploy/out/soomla-unity3d-core.unitypackage
    Soomla/Assets/Plugins/iOS/libUnitySoomlaiOSCore.a
    Soomla/Assets/Plugins/iOS/libSoomlaIOSCore.a
    Soomla/Assets/Plugins/Android/square-otto-1.3.2.jar
    Soomla/Assets/Plugins/Android/SoomlaAndroidCore.jar
    Soomla/Assets/Plugins/Android/UnitySoomlaAndroidCore.jar
)

./pruner.sh ${FILES[@]}
