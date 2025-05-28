# Piatti Operative - App
Restaurants front-end mobile app, Made with love by DIGO AI
*This is a **💙  Flutter** project*

## Technologies
  - 💙 Flutter
  - 🛜 Dio
  - 🚏 GoRouter
  - ♻️ Riverpod
  - 🗂️ SharedPreferences

## How to run
> [!NOTE]
> Add the enviroment variable in the `.env` filebases on the `.env.template`

### 🐞 Debug
  1. Open the project in **VS Code**, open the embedded terminal and run:
 ```console
 flutter pub get --no-example 
 ```

  2. Press `F5` or go to Debug Panel and run or debug, or run the following command and select the device where you want to debug
 ```console
 flutter run 
 ```

### 🚀 Deploy
To deploy the application on the Android platform you need the `secret key` and for the iOS platform, you need to log in to `Xcode` with the `Digo Team`.

#### ✅ Requirements
 
 - [ ] To change `package name`

 **Android**
```
flutter pub run change_app_package_name:main ai.digo.ibus_app --android
```

**iOS**
```
flutter pub run change_app_package_name:main ai.digo.ibus --ios
```

 - [ ] To change application `launcher icon`
```console
 flutter pub run flutter_launcher_icons:main
```
 - [ ]  To change `SplashScreen`
```
flutter pub run flutter_native_splash:create
```
#### 🤖 Android
  1. Copy the **key.properties** file to `[project]/android/key.properties` and configure signing in gradle file `[project]/android/app/build.gradle`
 ```
storePassword=<password-from-previous-step>
keyPassword=<password-from-previous-step>
keyAlias=upload
storeFile=<keystore-file-location>
```
  2. Review the **App Manifest** on `[project]/android/app/src/main/AndroidManifest.xml`
  3. Generate the new **apk** or **appbundle** file

**.apk**
 ```
 flutter build apk
 ```
 **.aab**
  ```
 flutter build appbundle
 ```

#### 🍏 iOS
  1. Open the project on **VS Code** and run the next command on the integrate terminal
```
 cd ios/ && pod install && cd -
```
  2. Open the `Runner.xcworkspace` on **Xcode**
  3. Verify `Runner/Targets/Runner` the **Deploy Info** on `General` and **User-Defined** on `Build Settings`
  4. Then, create the **Archive** on `Product`
  5. Finally, distribute the new **Archive** file