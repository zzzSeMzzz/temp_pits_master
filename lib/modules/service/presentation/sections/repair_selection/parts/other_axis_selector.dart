import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class OtherAxisSelector extends StatefulWidget {


  const OtherAxisSelector({Key? key}) : super(key: key);

  @override
  State<OtherAxisSelector> createState() => _OtherAxisSelectorState();
}

class _OtherAxisSelectorState extends State<OtherAxisSelector> {
  int axis = -1;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: 90,
        child: Stack(
          children: [
            Positioned.fill(
                child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: fieldGrey,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          axis = 1;
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.repairAir,
                        color: axis == 1 ? primaryColor : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          axis = 2;
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.repairDiagnosis,
                        color: axis == 2 ? primaryColor : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          axis = 3;
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.repairElectro,
                        color: axis == 3 ? primaryColor : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          axis = 4;
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.repairOil,
                        color: axis == 4 ? primaryColor : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          axis = 5;
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.repairFlame,
                        color: axis == 5 ? primaryColor : null,
                      ),
                    ),
                  ),
                ],
              ),
            )),
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                        color: white,
                      ),
                      child: Text(
                        'Other',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      );
}
