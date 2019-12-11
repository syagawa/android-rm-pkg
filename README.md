# Android Remove Package(app)

Remove package(app) shell script for Android bloatware.

## Usage

1. Install ADB to your PC.
2. Connect Android Device and PC via USB cable.
3. Check <serial number> by `$ adb devices`
4. Add package path to pkgs.
    ```
      #example
      com.google.android.music
      com.google.android.apps.books
    ```
    or refere _pkgs. 
5. Start removing packages.
  `$ ./rm.sh <serial number>`
