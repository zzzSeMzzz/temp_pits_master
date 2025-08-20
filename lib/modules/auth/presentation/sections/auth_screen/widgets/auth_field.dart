import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/globals/widgets/interaction/w_textfield.dart';

class AuthField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? isPassword;
  final String? hint;
  final String? prefixIconPath;
  final TextInputType? keyboardType;

  const AuthField(
      {this.controller,
      this.hint,
      this.isPassword,
      this.prefixIconPath,
      this.keyboardType,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WTextField(
      isObscure: isPassword,
      borderColor: Colors.black,
      fillColor: fieldGrey,
      onChanged: (text) {},
      height: 50,
      keyBoardType: keyboardType,
      controller: controller,
      hintText: hint,
      prefix: prefixIconPath != null
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                prefixIconPath!,
                width: 24,
                height: 24,
              ),
            )
          : null,
    );
  }
}
