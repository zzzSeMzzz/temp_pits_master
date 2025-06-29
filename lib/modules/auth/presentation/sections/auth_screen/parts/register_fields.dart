import 'package:flutter/cupertino.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/widgets/auth_field.dart';

class RegisterFields extends StatelessWidget {
  const RegisterFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
    children: const [
      AuthField(
        hint: 'Mail',
        prefixIconPath: AppIcons.mail,
      ),
      SizedBox(
        height: 8,
      ),
      AuthField(
        hint: 'Phone number',
        prefixIconPath: AppIcons.phone,
      ),
    ],
  );
}
