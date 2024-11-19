Android SDK is shipped along with Android Studio, and is also available in IntelliJ IDEA.

# Manually installing the Android SDK
Android SDK consists of the command line tools, emulator, build tools, platforms, platform tools and system images. It also requires the build system, Gradle, to be installed separately. You'll also want to install JDK to use JVM, but I'll skip that here.

The command line tools can be downloaded from Android Studio's download page. You can install the emulator, build tools, platform-tools, platforms and system images can be downloaded using `sdkmanager`.

After downloading the command line tools, do the following:

> [!NOTE]
> After adding an environment variable, you'll have to restart the console shell to reload the changes.
1. Extract the downloaded archive
2. Create a directory to store the Android SDK, for example, "android-sdk". Create a subfolder named "cmdline-tools".
3. Copy the "tools" folder from the extracted archive to the "cmdline-tools" folder.
4. Add an environment variable `ANDROID_SDK_ROOT=<path-to-android-sdk>/android-sdk`
5. Add `android-sdk/platform-tools`, `android-sdk/cmdline-tools/tools` and `android-sdk/cmdline-tools/tools/bin` to the PATH environment variable.
6. Install the other components using sdkmanager:
	- Type `sdkmanager --list` to see the list of available packages. Use your knowledge or intuition to figure out the latest (or required) versions of "platforms", "build-tools" and "system-images".
	- Use `sdkmanager --install` to install the packages.
	- An example would be `sdkmanager --install "platform-tools" "platforms;android-29" "build-tools;29.0.2" "emulator" "system-images;android-29;google_apis_playstore;x86_64"`
	- Remember to replace the packages in the above line with the right versions
7. Now we should install Gradle, following the instructions from its website. Add the Gradle bin folder to PATH too.
8. Next, we should create an AVD (emulator) image using avd-manager:
	- `avdmanager create avd -n <device-name> -k "system-images;android-29;google_apis_playstore;x86_64"` (Replace the System Image with the version you downloaded). This will take up some space.
9. You can launch the emulator by typing:
	- `emulator -avd <device-name>`

## SDK Directory Structure

When it's all done, the SDK Directory should look something like this:

```
android-sdk/
├── build-tools/
│   └── 30.0.3 (example)
├── cmdline-tools/
│   └── tools/
├── emulator
├── licenses
├── patcher
├── platforms/
│   ├── android-27 (example)
├── platform-tools/
│   ├── api/
│   ├── lib64/
│   └── systrace/
├── sources/
├── system-images/
└── tools/
    ├── bin/
    ├── lib/
    ├── proguard/
    └── support/
```
