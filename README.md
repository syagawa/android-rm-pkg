# Android Remove Package(app)

## Usage

1. Connect Android Device and PC via USB cable.
2. Check <serial number> by `$ adb devices`
3. Add package path to pkgs.
    ```
      #example
      com.google.android.music
      com.google.android.apps.books
    ```
    or refere _pkgs. 
4. Start removing packages.
  `$ ./rm.sh <serial number>`
