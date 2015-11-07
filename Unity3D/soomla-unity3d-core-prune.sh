#!/bin/sh

FILES=(
	*.unitypackage
	deploy/out/
    Soomla/Assets/Plugins/iOS/libUnitySoomlaiOSCore.a
    Soomla/Assets/Plugins/iOS/libSoomlaIOSCore.a
    Soomla/Assets/Plugins/Android/square-otto-1.3.2.jar
    Soomla/Assets/Plugins/Android/SoomlaAndroidCore.jar
    Soomla/Assets/Plugins/Android/UnitySoomlaAndroidCore.jar
)

./pruner.sh ${FILES[@]}
