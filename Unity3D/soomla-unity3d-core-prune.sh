#!/bin/sh

FILES=(
	soomla-unity3d-core.unitypackage 
	deploy/out/soomla-unity3d-core.unitypackage
    Soomla/Assets/Plugins/iOS/libUnitySoomlaiOSCore.a
    Soomla/Assets/Plugins/Android/UnitySoomlaAndroidCore.jar
)

./pruner.sh ${FILES[@]}
