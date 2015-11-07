#!/bin/sh

FILES=(
     build/
     SoomlaAndroidExample/libs/socialauth-4.4.jar
     social-providers/android-profile-facebook/libs/simple-fb-4.0.3.jar
     SoomlaAndroidExample/libs/AndroidProfile.jar
     SoomlaAndroidExample/libs/AndroidProfileFacebook.jar
     social-providers/android-profile-twitter/build
     social-providers/android-profile-facebook/build
     social-providers/android-profile-google/build
     SoomlaAndroidLevelUp/tests
)

./pruner.sh ${FILES[@]}
