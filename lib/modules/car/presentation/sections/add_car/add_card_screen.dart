import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/globals/widgets/interaction/w_textfield.dart';

class AddCarScreen extends StatefulWidget {
  final bool isBackButton;
  const AddCarScreen({required this.isBackButton, Key? key}) : super(key: key);

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.isBackButton)
              Container(
                margin: const EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppIcons.arrowLeft,
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            SizedBox(height: widget.isBackButton ? 16 : 56),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Conecta con tu vehículo',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            Image.asset(
              AppImages.scanCar,
              width: double.maxFinite,
              fit: BoxFit.cover,
              height: 395,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Introduce una matrícula o VIN',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: WTextField(
                disabledBorderColor: textGrey,
                fillColor: white,
                height: 56,
                borderColor: textGrey,
                borderRadius: 16,
                onTapSuffix: () {},
                suffixIcon: AppIcons.icScan2,
                onChanged: (text) {},
              ),
            ),
            const SizedBox(height: 24),
            WButton(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {

              },
              svgAsset: AppIcons.plusCircle,
              borderRadius: 16,
              text: 'Conectar',
              height: 56,
              textColor: white,
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom + 30),
          ],
        ),
      ),
    ),
  );
}
