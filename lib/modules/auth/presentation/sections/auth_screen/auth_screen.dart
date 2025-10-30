import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/globals/widgets/interaction/keyboard_dismisser.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/bloc/auth_bloc.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/fields.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/social_buttons.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/parts/suggestion_bar.dart';
import '../../../../navigation/presentation/home.dart';

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
      SnackBar(
          content: Text(
        message,
        style: Theme.of(context).textTheme.displaySmall!.copyWith(
            fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
      )),
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
            body: LayoutBuilder(
              builder: (context, constraints) {
                return MultiBlocListener(
                  listeners: [
                    BlocListener<AuthBloc, AuthState>(
                      listenWhen: (prev, curr) =>
                          prev.isSuccess != curr.isSuccess,
                      listener: (context, state) {
                        if (state.isSuccess) {
                          Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (_) => const NavigationScreen()),
                          );
                        }
                      },
                    ),
                    BlocListener<AuthBloc, AuthState>(
                      listenWhen: (prev, curr) =>
                          prev.errorText != curr.errorText &&
                          curr.errorText.isNotEmpty,
                      listener: (context, state) {
                        _showSnack(state.errorText);
                        context
                            .read<AuthBloc>()
                            .add(const AuthEvent.clearError());
                      },
                    ),
                  ],
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight),
                      child: Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).padding.top + 92,
                            left: 24,
                            right: 24),
                        child: IntrinsicHeight(
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
                                                fontSize: 24,
                                                fontWeight: FontWeight.w700),
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
                              BlocListener<AuthBloc, AuthState>(
                                listenWhen: (prev, curr) =>
                                    prev.isSuccess != curr.isSuccess,
                                listener: (context, state) {
                                  if (state.isSuccess) {
                                    Navigator.pushReplacement(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (_) =>
                                              const NavigationScreen()),
                                    );
                                  }
                                },
                                child: BlocBuilder<AuthBloc, AuthState>(
                                  builder: (context, state) {
                                    return WButton(
                                      isLoading: state.isLoading,
                                      height: 50,
                                      onTap: () {
                                        final fields = _fieldsKey.currentState;
                                        if (fields == null) return;

                                        if (state.isLoginMode) {
                                          final email = fields
                                              .emailController.text
                                              .trim();
                                          final password = fields
                                              .passwordController.text
                                              .trim();
                                          if (email.isEmpty ||
                                              password.isEmpty) {
                                            _showSnack(
                                                'Username y contraseña son obligatorios');
                                            return;
                                          }
                                          context.read<AuthBloc>().add(
                                              AuthEvent.login(
                                                  email: email,
                                                  password: password));
                                        } else {
                                          final fullName = fields
                                              .firstNameController.text
                                              .trim().split(" ");
                                          String firstName = "";
                                          String lastName = "";
                                          if(fullName.length>=2) {
                                            firstName = fullName.first;
                                            lastName = fullName.last;
                                          }
                                          /*final lastname = fields
                                              .lastNameController.text
                                              .trim();*/
                                          final email = fields
                                              .regEmailController.text
                                              .trim();
                                          final phone = fields
                                              .phoneController.text
                                              .trim();
                                          final password = fields
                                              .passwordController.text
                                              .trim();
                                          if (firstName.isEmpty ||
                                              lastName.isEmpty ||
                                              email.isEmpty ||
                                              phone.isEmpty ||
                                              password.isEmpty) {
                                            _showSnack(
                                                'Todos los campos son obligatorios');
                                            return;
                                          }
                                          context
                                              .read<AuthBloc>()
                                              .add(AuthEvent.register(
                                                firstname: firstName,
                                                lastname: lastName,
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
                              ),
                              const SizedBox(
                                height: 23,
                              ),
                             // const SocialButtons(),//todo
                              BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                                  return state.isLoginMode
                                      ? Container(
                                          padding:
                                              const EdgeInsets.only(top: 60),
                                          child: Text("Acceder como invitado",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displaySmall!
                                                  .copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                  )).onTap(() async {
                                            await StorageRepository.putBool(
                                                key: StorageRepository
                                                    .loginAsGuestKey,
                                                value: true);
                                            if (context.mounted) {
                                              Navigator.pushReplacement(
                                                  context,
                                                  CupertinoPageRoute(
                                                      builder: (c) =>
                                                          const NavigationScreen()));
                                            }
                                          }),
                                        )
                                      : const SizedBox.shrink();
                                },
                              ),
                              const Spacer(),
                              const AuthSuggestionBar(),
                              SizedBox(
                                height:
                                    16 + MediaQuery.of(context).padding.bottom,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      );
}
