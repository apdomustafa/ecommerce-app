import 'package:ecommerce_app/features/auth/splash_view.dart';
import 'package:ecommerce_app/features/auth/view/sign_in_view.dart';
import 'package:ecommerce_app/utils/device_info/device_info.dart';
import 'package:ecommerce_app/utils/thems/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint(DeviceInfo.getDeviceWidth(context).toString());
    debugPrint(DeviceInfo.getDeviceHeight(context).toString());

    return ScreenUtilInit(
      designSize: const Size(423.5, 893),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        home: const Scaffold(
          body: SignInView(),
        ),
      ),
    );
  }
}
