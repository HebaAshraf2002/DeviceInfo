# Device Information Retrieval

## Overview

This Flutter application demonstrates how to retrieve and display information about the device being used. The app features a page that shows the device model name and its operating system version.

## What the Code Does

- **Device Model and OS Version**: The app retrieves the device model and operating system version and displays this information in the center of the screen.

## How the Code Works

1. **Imports**:
   - The app imports necessary packages: `flutter/foundation.dart` for platform detection, `flutter/material.dart` for UI components, and `device_info_plus` for accessing device information.

2. **State Management**:
   - The main widget is a `StatefulWidget` that maintains the state of the device information.

3. **Device Information Retrieval**:
   - In the `initState()` method, the app calls `_getDeviceInfo()` to retrieve the device information asynchronously.
   - The app checks the platform (iOS or Android) and retrieves the appropriate device details.

4. **UI Structure**:
   - The UI consists of an `AppBar` with the title "Device Info" and a `Center` widget that displays the device model and OS version.

5. **Loading State**:
   - Initially, a loading message is displayed until the device information is retrieved.

## Used Packages

1. **device_info_plus**
   - **Description**: A Flutter plugin for retrieving information about the device.
   - **Link**: [device_info_plus](https://pub.dev/packages/device_info_plus)
