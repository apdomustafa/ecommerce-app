import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../colors/app_colors.dart';
import '../const/type_def.dart';
import '../thems/text_style.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function1? onChange;
  final bool isObscure;
  final Widget? suffixIcon = null;
  final Widget? preffixIcon = null;
  final FocusNode? srcFocuseNode, desFocusNode;
  final TextEditingController? controller;
  final GlobalKey<FormState>? interanlFormkey;
  final String? interanlErrorMessage;

  const CustomTextField._internal({
    required this.hint,
    required this.onChange,
    required this.isObscure,
    this.controller,
    this.srcFocuseNode,
    this.desFocusNode,
    this.interanlFormkey,
    this.interanlErrorMessage,
  });

  factory CustomTextField.primary(
      {required String hint,
      required TextEditingController controller,
      required Function1? onComplate}) {
    return CustomTextField._internal(
      hint: hint,
      onChange: onComplate,
      controller: controller,
      isObscure: false,
    );
  }
  factory CustomTextField.withFocusNode({
    required Function1? onChange,
    required String hint,
    required FocusNode sourceFocusNode,
    required FocusNode destinationFocusNode,
    required GlobalKey<FormState> formKey,
    required String errorMessage,
  }) {
    return CustomTextField._internal(
      hint: hint,
      onChange: onChange,
      isObscure: false,
      srcFocuseNode: sourceFocusNode,
      desFocusNode: destinationFocusNode,
      interanlFormkey: formKey,
      interanlErrorMessage: errorMessage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: interanlFormkey,
      child: TextFormField(
        focusNode: srcFocuseNode,
        controller: controller,
        onChanged: onChange,
        onEditingComplete: desFocusNode != null
            ? () => FocusScope.of(context).requestFocus(desFocusNode)
            : null,
        validator: (value) {
          if (value != null) {
            if (value.isEmpty) {
              return interanlErrorMessage;
            }
          }
          return null;
        },
        textInputAction:
            desFocusNode == null ? TextInputAction.done : TextInputAction.next,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          hintText: hint,
          hintStyle: AppTextStyle.styleHintText(),
          suffixIcon: suffixIcon,
          enabledBorder: outLineBorder(AppColors.tertiryColor),
          focusedBorder: outLineBorder(AppColors.primaryColor),
          errorBorder: outLineBorder(AppColors.errorColor),
        ),
      ),
    );
  }

  OutlineInputBorder outLineBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(32),
        borderSide: BorderSide(
          color: color,
        ));
  }
}
