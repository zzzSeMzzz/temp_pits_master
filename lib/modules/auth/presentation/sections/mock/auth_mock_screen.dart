import 'package:flutter/material.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';

import '../auth_screen/auth_screen.dart';

class AuthMockScreen extends StatelessWidget {
  const AuthMockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Iniciar sesión", style: context.textTheme.displayLarge!.copyWith(fontSize: 24)),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Positioned.fill(
                child: Center(child: Image.asset(AppImages.authMockLogo),)
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 24,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    WButton(
                      onTap: () => {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => const AuthScreen()),
                              (route) => false,
                        )
                      },
                      color: fieldGrey,
                      height: 53,
                      textColor: textGrey,
                      text: 'Iniciar Sesión',
                    ),
                    const SizedBox(height: 16),
                    WButton(
                      onTap: () => {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => const AuthScreen()),
                              (route) => false,
                        )
                      },
                      height: 53,
                      text: 'Registrarse',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
