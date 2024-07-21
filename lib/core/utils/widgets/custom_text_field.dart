import 'package:ecommerce_app/core/utils/widgets/custom_suffiex_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../colors/app_colors.dart';
import '../const/type_def.dart';
import '../thems/text_style.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final Function1? onChange;
  final bool isObscure;
  final FocusNode? srcFocuseNode, desFocusNode;
  final TextEditingController? controller;
  final GlobalKey<FormState>? interanlFormkey;
  final String? interanlErrorMessage;
  final Color borderColor;

  const CustomTextField._internal({
    required this.hint,
    required this.onChange,
    required this.isObscure,
    this.controller,
    this.srcFocuseNode,
    this.desFocusNode,
    this.interanlFormkey,
    this.interanlErrorMessage,
    required this.borderColor,
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
      borderColor: AppColors.color100,
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
      borderColor: AppColors.color100,
    );
  }

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final Widget? suffixIcon = null;
  final Widget? preffixIcon = null;
  bool? hasError;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.interanlFormkey,
      child: TextFormField(
        focusNode: widget.srcFocuseNode,
        controller: widget.controller,
        onChanged: widget.onChange,
        onEditingComplete: widget.desFocusNode != null
            ? () => FocusScope.of(context).requestFocus(widget.desFocusNode)
            : null,
        validator: (value) {
          if (value != null) {
            if (value.isEmpty) {
              setState(() {
                hasError = true;
              });
              return widget.interanlErrorMessage;
            } else {
              setState(() {
                hasError = false;
              });
            }
          }
          return null;
        },
        textInputAction: widget.desFocusNode == null
            ? TextInputAction.done
            : TextInputAction.next,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            hintText: widget.hint,
            hintStyle: AppTextStyle.generalRegular16(),
            suffixIcon: TextFieldSuffixIcon(
              hasError: hasError,
            ),
            enabledBorder: outLineBorder(
                hasError == false ? Colors.green : widget.borderColor),
            focusedBorder: outLineBorder(
                hasError == false ? Colors.green : widget.borderColor),
            errorBorder: outLineBorder(AppColors.errorColor),
            focusedErrorBorder: outLineBorder(AppColors.errorColor)),
      ),
    );
  }

  OutlineInputBorder outLineBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: color,
        ));
  }
}
