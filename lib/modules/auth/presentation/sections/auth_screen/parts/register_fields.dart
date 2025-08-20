import 'package:flutter/cupertino.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/widgets/auth_field.dart';

class RegisterFields extends StatelessWidget {
  final TextEditingController regEmailController;
  final TextEditingController phoneController;

  const RegisterFields({Key? key, required this.regEmailController, required this.phoneController}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    children: [
      AuthField(
        controller: regEmailController,
        hint: 'Mail',
        prefixIconPath: AppIcons.mail,
        keyboardType: TextInputType.emailAddress,
      ),
      const SizedBox(
        height: 8,
      ),
      AuthField(
        controller: phoneController,
        hint: 'Phone number',
        prefixIconPath: AppIcons.phone,
        keyboardType: TextInputType.phone,
      ),
    ],
  );
}
