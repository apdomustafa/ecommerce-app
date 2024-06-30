import 'package:ecommerce_app/core/utils/colors/app_colors.dart';
import 'package:ecommerce_app/core/utils/const/type_def.dart';
import 'package:ecommerce_app/core/utils/thems/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField(
      {super.key,
      required this.passFoucNode,
      required this.onChange,
      required this.formKey});
  final Function1 onChange;
  final FocusNode passFoucNode;
  final GlobalKey<FormState> formKey;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscure = true;
  FocusNode? passFoucNode;
  Function1? onChange;
  GlobalKey<FormState>? formKey;

  @override
  void initState() {
    super.initState();
    onChange = widget.onChange;
    passFoucNode = widget.passFoucNode;
    formKey = widget.formKey;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        obscureText: isObscure,
        onChanged: onChange,
        focusNode: passFoucNode,
        validator: (value) {
          if (value!.isEmpty) {
            return 'please enter password';
          } else if (value.length < 6) {
            return 'please enter password more than 5 characters';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          hintText: '*********',
          hintStyle: AppTextStyle.styleHintText(),
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              icon: isObscure
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility)),
          enabledBorder: outLineBorder(AppColors.tertiryColor),
          focusedBorder: outLineBorder(AppColors.primaryColor),
          errorBorder: outLineBorder(AppColors.errorColor),
        ),
      ),
    );
  }

  OutlineInputBorder outLineBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.r),
        borderSide: BorderSide(
          color: color,
        ));
  }
}
