import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/bloc/auth_bloc.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/bloc/auth_bloc.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/register_fields.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/widgets/auth_field.dart';

class AuthFields extends StatelessWidget {
  const AuthFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          const AuthField(
            hint: 'Your username, email or phone',
            prefixIconPath: AppIcons.mail,
          ),
          const SizedBox(
            height: 8,
          ),
          const AuthField(
            hint: 'Password',
            isPassword: true,
            prefixIconPath: AppIcons.lock,
          ),
          const SizedBox(
            height: 8,
          ),
          BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return AnimatedCrossFade(
                  firstChild: Container(),
                  secondChild: RegisterFields(),
                  crossFadeState: state.isLoginMode
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 200));
            },
          )
        ],
      );
}
