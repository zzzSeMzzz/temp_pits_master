import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/bloc/auth_bloc.dart';

class AuthSuggestionBar extends StatelessWidget {
  const AuthSuggestionBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          context.read<AuthBloc>().add(const AuthEvent.changeMode());
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.isLoginMode
                        ? "Don't have an account?"
                        : 'Already have an account?',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(
                    state.isLoginMode ? "Sign Up" : 'Sign in',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: primaryColor),
                  ),
                ],
              ),
            );
          },
        ),
      );
}
