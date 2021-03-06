all:
	NDK_DEBUG=1 $(CFG_ANDROID_NDK_PATH)/ndk-build -B
	$(CFG_ANDROID_SDK_PATH)/tools/android update project --name ServoAndroid --target "android-18" --path .
	ant debug

with-libs: 
	NDK_DEBUG=1 $(CFG_ANDROID_NDK_PATH)/ndk-build -B
	cp -a $(CFG_BUILD_HOME)sofile/*.so* ./libs/armeabi/
	cp -a ./extlibs/* ./libs/armeabi
	$(CFG_ANDROID_SDK_PATH)/tools/android update project --name ServoAndroid --target "android-18" --path .
	ant debug

