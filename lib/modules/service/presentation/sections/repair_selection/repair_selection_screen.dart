import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/globals/widgets/interaction/w_textfield.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/parts/axis_selector.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/parts/other_axis_selector.dart';

class RepairSelectionScreen extends StatelessWidget {
  const RepairSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 13 + MediaQuery.of(context).padding.top,
                ),
                GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      AppIcons.arrowLeft,
                      width: 24,
                      height: 24,
                      color: mainDark,
                    )),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Selection of car parts',
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'In addition, it is possible to add photos of broken parts of the car.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Image.asset(
                      AppImages.carSelection,
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                    )),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Axis',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const AxisSelector(
                  title: 'Axis 1',
                ),
                const SizedBox(
                  height: 24,
                ),
                const AxisSelector(
                  title: 'Axis 2',
                ),
                const SizedBox(
                  height: 24,
                ),
                const OtherAxisSelector(),
                const SizedBox(
                  height: 40,
                ),
                WButton(
                  color: Colors.transparent,
                  height: 72,
                  onTap: () {},
                  border: Border.all(color: mainDark),
                  borderRadius: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppIcons.plusCircle,
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add photo',
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add your comment',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                WTextField(
                  fillColor: fieldGrey,
                  onChanged: (text) {},
                  keyBoardType: TextInputType.multiline,
                  maxLines: 10,
                  hintText: 'Type here...',
                ),
                const SizedBox(
                  height: 16,
                ),
                WButton(
                  border: Border.all(color: black),
                  borderRadius: 4,
                  onTap: () {},
                  height: 55,
                  color: white,
                  text: 'Add comment',
                  textColor: black,
                ),
                const SizedBox(
                  height: 16,
                ),
                WButton(
                  margin: EdgeInsets.only(
                      bottom: 24 + MediaQuery.of(context).padding.bottom),
                  borderRadius: 4,
                  onTap: () {},
                  height: 55,
                  color: black,
                  text: 'Send an application',
                  textColor: white,
                ),
              ],
            ),
          ),
        ),
      );
}
