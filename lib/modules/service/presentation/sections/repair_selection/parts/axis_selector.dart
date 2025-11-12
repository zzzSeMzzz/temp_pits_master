import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class AxisSelector extends StatefulWidget {
  final String title;
  final bool isAxis1;

  final Function(List<String>) callbackSelected;

  const AxisSelector({required this.title, Key? key, required this.callbackSelected, required this.isAxis1}) : super(key: key);

  @override
  State<AxisSelector> createState() => _AxisSelectorState();
}

class _AxisSelectorState extends State<AxisSelector> {
  int axis = -1;

  List<String> getPartByNum(bool isAxis1) {
    String result = '';
    switch(axis) {
      case 1: isAxis1 ? result = 'part-36' : result = 'part-40';
      case 2: isAxis1 ? result = 'part-37' : result = 'part-41';
      case 3: isAxis1 ? result = 'part-38' : result = 'part-42';
      case 4: isAxis1 ? result = 'part-39' : result = 'part-43';
      default: result = '';
    }
    return [result];
  }

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
                          widget.callbackSelected(getPartByNum(widget.isAxis1));
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.axis1,
                        color: axis == 1 ? primaryColor : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          axis = 2;
                          widget.callbackSelected(getPartByNum(widget.isAxis1));
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.axis2,
                        color: axis == 2 ? primaryColor : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          axis = 3;
                          widget.callbackSelected(getPartByNum(widget.isAxis1));
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.axis3,
                        color: axis == 3 ? primaryColor : null,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          axis = 4;
                          widget.callbackSelected(getPartByNum(widget.isAxis1));
                        });
                      },
                      child: SvgPicture.asset(
                        AppIcons.axis4,
                        color: axis == 4 ? primaryColor : null,
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
                        widget.title,
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
