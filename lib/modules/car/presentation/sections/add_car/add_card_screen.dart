import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/globals/widgets/interaction/w_textfield.dart';
import 'package:pits_app/modules/navigation/presentation/home.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';

class AddCarScreen extends StatefulWidget {
  final bool isBackButton;
  const AddCarScreen({
    required this.isBackButton,
    Key? key}) : super(key: key);

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  // void scanWithAnyline() async {
 /* Future<void> _read() async {
    List<OcrText> texts = [];
    Size _scanpreviewOcr =  FlutterMobileVision.PREVIEW;
    try {
      texts = await FlutterMobileVision.read(
        flash: false,
        autoFocus: true,
        multiple: true,
        waitTap: true,
        //OPTIONAL: close camera after tap, even if there are no detection.
        //Camera would usually stay on, until there is a valid detection
        forceCloseCameraOnTap: true,
        //OPTIONAL: path to save image to. leave empty if you do not want to save the image
        imagePath: '', //'path/to/file.jpg'
        showText: true,
        preview:  FlutterMobileVision.PREVIEW,
        scanArea: Size(_scanpreviewOcr.width - 20, _scanpreviewOcr.height - 20),
        camera:  FlutterMobileVision.CAMERA_FRONT,
        fps: 20,
      );
    } on Exception {
      texts.add(OcrText('Failed to recognize text.'));
    }

    if (!mounted) return;


  }*/

  _read() {}


  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height:(widget.isBackButton?32: 72 )+ MediaQuery.of(context).padding.top,
            ),
          if(widget.isBackButton)  Container(margin: const EdgeInsets.only(left: 16),
            child: GestureDetector(onTap: (){
                Navigator.pop(context);
              },
                child: SvgPicture.asset(
                  AppIcons.arrowLeft,
                  width: 24,
                  height: 24,
                ),
              ),
          ),
           const SizedBox(height: 16,),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Conecta con tu vehículo',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Image.asset(
              AppImages.scanCar,
              width: double.maxFinite,
              fit: BoxFit.cover,
              height: 395,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Introduce una matrícula o VIN',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: WTextField(
                  disabledBorderColor: textGrey,
                  fillColor: white,
                  height: 56,
                  borderColor: textGrey,
                  borderRadius: 16,
                  onTapSuffix: () {
                    _read();
                  },
                  suffixIcon: AppIcons.icScan2,
                  onChanged: (text) {}),
            ),
            const SizedBox(
              height: 24,
            ),
            WButton(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              onTap: () {

                //Navigator.push(context, fade(page: const NavigationScreen()));
              },
              svgAsset: AppIcons.plusCircle,
              borderRadius: 16,
              text: 'Conectar',
              height: 56,
              textColor: white,
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 30,
            )
          ],
        ),
      );
}
