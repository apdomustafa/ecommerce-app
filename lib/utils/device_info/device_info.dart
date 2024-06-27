import 'package:flutter/material.dart';

class DeviceInfo {
  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.sizeOf(context).width;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.sizeOf(context).height;
  }
}
