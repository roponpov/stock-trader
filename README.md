# stock_trader

A new Flutter project.

## Getting Started

# Useful commands
1. Before submit
    ```
    flutter clean 
    rm -Rf build
    rm -Rf .dart_tool
    rm -Rf pubspec.lock
    cd ios 
    rm -Rf ios/Pods 
    rm -Rf ios/.symlinks 
    rm -Rf ios/Flutter/Flutter.framework 
    rm -Rf ios/Flutter/Flutter.podspec 
    rm -Rf Podfile.lock
    cd ..
    ```
    ```
    flutter clean;
    rm -Rf build;
    rm -Rf .dart_tool;
    rm -Rf pubspec.lock;
    cd ios;
    rm -Rf ios/Pods; 
    rm -Rf ios/.symlinks; 
    rm -Rf ios/Flutter/Flutter.framework; 
    rm -Rf ios/Flutter/Flutter.podspec;
    rm -Rf Podfile.lock;
    cd ..;
    ```   

2. Run Project
    ```
    flutter clean 
    rm -Rf build
    rm -Rf .dart_tool
    rm -Rf pubspec.lock
    cd ios
    rm -Rf ios/Pods 
    rm -Rf ios/.symlinks 
    rm -Rf ios/Flutter/Flutter.framework 
    rm -Rf ios/Flutter/Flutter.podspec 
    rm -Rf Podfile.lock
    flutter pub get
    pod install
    cd ..
    flutter run
    ```
3. To generate .g.dart
    ```
    flutter clean 
    rm -Rf build
    rm -Rf .dart_tool
    rm -Rf pubspec.lock
    rm -Rf lib/models/*.g.dart
    cd ios
    rm -Rf ios/Pods 
    rm -Rf ios/.symlinks 
    rm -Rf ios/Flutter/Flutter.framework 
    rm -Rf ios/Flutter/Flutter.podspec 
    rm -Rf Podfile.lock
    flutter pub get
    pod install
    cd ..
    flutter pub run build_runner build —-delete-conflicting-outputs
    ```

    ```
    flutter clean;
    rm -Rf build;
    rm -Rf .dart_tool;
    rm -Rf pubspec.lock;
    rm -Rf lib/models/*.g.dart;
    cd ios;
    rm -Rf ios/Pods; 
    rm -Rf ios/.symlinks; 
    rm -Rf ios/Flutter/Flutter.framework; 
    rm -Rf ios/Flutter/Flutter.podspec;
    rm -Rf Podfile.lock;
    flutter pub get;
    pod install;
    cd ..;
    flutter pub run build_runner build —-delete-conflicting-outputs;
    ```

4. To Run with mode
    ```
    flutter run --dart-define=ENV=dev
    ```
5. To Build Release iOS
    ```
    flutter build ios --release
    ```
6. To Build Release Android
    1. To Build Release APK With Code Obfuscation
        ```
        flutter build apk --release --split-per-abi --obfuscate --split-debug-info=./build/debug
        ```
    2. To Build Release AAB With Code Obfuscation
        ```
        flutter build appbundle --release --obfuscate --split-debug-info=./build/debug
        ```
    3. To Build Release APK
        ```
        flutter build apk --split-per-abi
        ```
    4. To Build Release AAB
        ```
        flutter build appbundle --release
        ```
7. To Generate gen-l10n
    ```
    flutter gen-l10n
    ```
