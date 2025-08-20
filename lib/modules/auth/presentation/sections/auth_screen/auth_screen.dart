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
                  top: MediaQuery.of(context).padding.top + 92,
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
                            state.isLoginMode
                                ? 'Iniciar sesión'
                                : 'Registrarse',
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
                  const AuthFields(),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      if (state.isLoginMode) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '¿Has olvidado tu contraseña?',
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
                        isLoading: state.isLoading,
                        height: 50,
                        onTap: () {
                          /*Navigator.pushReplacement(
                              context,
                              fade(
                                  page: const AddCarScreen(
                                isBackButton: false,
                              )));*/
                          if(state.isLoginMode) {

                          } else {

                          }
                        },
                        color: mainDark,
                        text: state.isLoginMode
                            ? 'Iniciar sesión'
                            : "Registrarse",
                        textColor: white,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  const SocialButtons(),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return state.isLoginMode
                          ? Container(
                              padding: const EdgeInsets.only(top: 60),
                              child: Text("Acceder como invitado",
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      )),
                            )
                          : const SizedBox.shrink();
                    },
                  ),
                  const Spacer(),
                  const AuthSuggestionBar(),
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
