import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../thems/text_style.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    required this.firstText,
    required this.secondText,
  });
  final String firstText, secondText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            firstText,
            style: AppTextStyle.generalSemiBold32(),
          ),
          const Gap(8),
          Text(
            secondText,
            style: AppTextStyle.generalRegular16(),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
