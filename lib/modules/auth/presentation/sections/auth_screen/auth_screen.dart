import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/keyboard_dismisser.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/bloc/auth_bloc.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/fields.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/social_buttons.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/suggestion_bar.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/widgets/auth_field.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/widgets/social_button.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/add_card_screen.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = AuthBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider.value(
        value: authBloc,
        child: KeyboardDismisser(
          child: Scaffold(
            body: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 72,
                  left: 24,
                  right: 24),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return Text(
                            state.isLoginMode ? 'Sign In' : 'Sign Up',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                    fontSize: 24, fontWeight: FontWeight.w700),
                          );
                        },
                      )
                    ],
                  ),
                  AuthFields(),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      if (state.isLoginMode) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Forgot password ?',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13),
                            )
                          ],
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return WButton(
                        height: 50,
                        onTap: () {
                          Navigator.push(
                              context,
                              fade(
                                  page: AddCarScreen(
                                isBackButton: false,
                              )));
                        },
                        color: mainDark,
                        text: state.isLoginMode ? 'Sign In' : "Sign Up",
                        textColor: white,
                      );
                    },
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  SocialButtons(),
                  Spacer(),
                  AuthSuggestionBar(),
                  SizedBox(
                    height: 16 + MediaQuery.of(context).padding.bottom,
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
