import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/globals/widgets/interaction/keyboard_dismisser.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/bloc/auth_bloc.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/fields.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/social_buttons.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/suggestion_bar.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late AuthBloc authBloc;
  final GlobalKey<AuthFieldsState> _fieldsKey = GlobalKey<AuthFieldsState>();

  void _showSnack(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

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
                  AuthFields(key: _fieldsKey),
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
                          final fields = _fieldsKey.currentState;
                          if (fields == null) return;

                          if (state.isLoginMode) {
                            final email = fields.emailController.text.trim();
                            final password =
                                fields.passwordController.text.trim();
                            if (email.isEmpty || password.isEmpty) {
                              _showSnack('Email y contraseña son obligatorios');
                              return;
                            }
                            context.read<AuthBloc>().add(AuthEvent.login(
                                email: email, password: password));
                          } else {
                            final firstname =
                                fields.firstNameController.text.trim();
                            final lastname =
                                fields.lastNameController.text.trim();
                            final email = fields.regEmailController.text.trim();
                            final phone = fields.phoneController.text.trim();
                            final password =
                                fields.passwordController.text.trim();
                            if (firstname.isEmpty ||
                                lastname.isEmpty ||
                                email.isEmpty ||
                                phone.isEmpty ||
                                password.isEmpty) {
                              _showSnack('Todos los campos son obligatorios');
                              return;
                            }
                            context.read<AuthBloc>().add(AuthEvent.register(
                                  firstname: firstname,
                                  lastname: lastname,
                                  email: email,
                                  phone: phone,
                                  password: password,
                                ));
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
