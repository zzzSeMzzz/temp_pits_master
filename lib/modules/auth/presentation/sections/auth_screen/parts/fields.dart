import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/bloc/auth_bloc.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/register_fields.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/widgets/auth_field.dart';

class AuthFields extends StatefulWidget {
  const AuthFields({Key? key}) : super(key: key);

  @override
  State<AuthFields> createState() => AuthFieldsState();
}

class AuthFieldsState extends State<AuthFields> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController regEmailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    regEmailController.dispose();
    phoneController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          AuthField(
            controller: emailController,
            hint: 'Nombre de usuario o correo electrónico',
            prefixIconPath: AppIcons.user,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 8,
          ),
          AuthField(
            controller: passwordController,
            hint: 'Contraseña',
            isPassword: true,
            prefixIconPath: AppIcons.lock,
            keyboardType: TextInputType.visiblePassword,
          ),
          const SizedBox(
            height: 8,
          ),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return AnimatedCrossFade(
                  firstChild: Container(),
                  secondChild: RegisterFields(
                    regEmailController: regEmailController,
                    phoneController: phoneController,
                  ),
                  crossFadeState: state.isLoginMode
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 200));
            },
          )
        ],
      );
}
