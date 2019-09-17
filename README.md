# react-native-number-picker-library

A Native number picker for both Android & iOS.

iOS is using [ActionSheetPicker-3.0](http://skywinder.github.io/ActionSheetPicker-3.0/)

## Getting started

`$ npm install react-native-number-picker-ultra --save`

### Mostly automatic installation

`$ react-native link react-native-number-picker-ultra`

### Manual installation

#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-number-picker-ultra` and add `RNNumberPickerLibrary.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNNumberPickerLibrary.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`

- Add `import com.reactlibrary.RNNumberPickerLibraryPackage;` to the imports at the top of the file
- Add `new RNNumberPickerLibraryPackage()` to the list returned by the `getPackages()` method

2. Append the following lines to `android/settings.gradle`:
   ```
   include ':react-native-number-picker-ultra'
   project(':react-native-number-picker-ultra').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-number-picker-ultra/android')
   ```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
   ```
     compile project(':react-native-number-picker-ultra')
   ```

## Usage

```javascript
import RNNumberPickerLibrary from "react-native-number-picker-ultra";

//Method createDialog(objectForConfig, callBackForDoneClick, callbackForCancelClick)
RNNumberPickerLibrary.createDialog(
  {
    minValue: 0,
    maxValue: 100,
    selectedValue: 10,
    doneText: "Done",
    doneTextColor: "#000000", // only for Android
    cancelText: "Cancel",
    cancelTextColor: "#000000" // only for Android
  },
  (error, data) => {
    if (error) {
      console.error(error);
    } else {
      console.log(data);
    }
  },
  (error, data) => {
    if (error) {
      console.error(error);
    } else {
      console.log(data);
    }
  }
);
```
