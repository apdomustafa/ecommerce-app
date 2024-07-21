// import 'package:ecommerce_app/core/utils/widgets/custom_button.dart';
// import 'package:flutter/material.dart';
// import 'package:location/location.dart';
// // import 'package:geolocator/geolocator.dart';

// class CurrrentLocationButton extends StatelessWidget {
//   const CurrrentLocationButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return CustomButton.primary(() {
//       // _getCurrentLocation();
//     }, 'Allow Location Access');
//   }

//   Future<void> _checkPermissions() async {
//     LocationData? currentLocation;
//     final Location locationService = Location();
//     bool permissionGranted = false;
//     final bool serviceEnabled = await locationService.serviceEnabled();
//     if (!serviceEnabled) {
//       final bool serviceRequestedResult =
//           await locationService.requestService();
//       if (!serviceRequestedResult) {
//         return;
//       }
//     }

//     final PermissionStatus permission = await locationService.hasPermission();
//     if (permission == PermissionStatus.denied) {
//       final PermissionStatus permissionRequestedResult =
//           await locationService.requestPermission();
//       if (permissionRequestedResult != PermissionStatus.granted) {
//         return;
//       }
//     }

//     permissionGranted = true;

//     final LocationData locationResult = await locationService.getLocation();
//     debugPrint(locationResult.altitude.toString());
//     debugPrint(locationResult.longitude.toString());
//   }
// }
