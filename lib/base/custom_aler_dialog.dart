import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import '../assets/colors/colors.dart';


void showCustomAlertDialog(
    BuildContext context,
    String title, message,
    VoidCallback yesClick, noClick
) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor: fieldGrey, // Custom background color
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: PitsAlertDialog(
              title: title,
              message: message,
              noClick: noClick,
              yesClick: yesClick,
            ),
          ),
        );
      }
  );
}


class PitsAlertDialog extends StatelessWidget {
  PitsAlertDialog({super.key,
    required this.title,
    required this.message,
    required this.noClick,
    required this.yesClick
  });

  final String title, message;
  VoidCallback noClick, yesClick;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppIcons.icDlgQuestion),

        Text(title, style: Theme.of(context).textTheme
            .labelLarge!.copyWith(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.black
        )),
        const SizedBox(height: 20),
        Text(message, style: Theme.of(context).textTheme
            .labelLarge!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: textGrey
        ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          WButton(
            color: Colors.white,
            height: 56,
            textColor: Colors.black,
            text: 'Si',
            //onTap: onTap,
            width: 60,
            onTap: yesClick,
          ),
          const SizedBox(width: 24),
          WButton(
            color: Colors.black,
            height: 56,
            textColor: white,
            text: 'No',
            //onTap: onTap,
            width: 60,
            onTap: noClick,
          )
        ],
        )
      ],
    );
  }
}
