import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'home',
          style: AppTextStyle.generalSemiBold32(),
        ),
      ),
    );
  }
}
