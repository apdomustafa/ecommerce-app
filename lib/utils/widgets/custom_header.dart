import 'package:ecommerce_app/utils/thems/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader(
      {super.key,
      required this.firstText,
      required this.secondText,
      this.thirdText});
  final String firstText, secondText;
  final String? thirdText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstText,
          style: AppTextStyle.styleBold24(),
        ),
        thirdText == null ? const Gap(8) : const Gap(4),
        Text(
          secondText,
          style: AppTextStyle.styleNormal12(),
        ),
        thirdText == null
            ? const SizedBox()
            : Text(
                firstText,
                style: AppTextStyle.styleBold12(),
              ),
      ],
    );
  }
}
