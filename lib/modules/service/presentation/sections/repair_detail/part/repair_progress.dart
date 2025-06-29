import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';

class RepairProgress extends StatelessWidget {
  const RepairProgress({Key? key}) : super(key: key);


  Widget box()=>Expanded(child: Container(height: 5,color: primaryColor,));
  Widget boxDis()=>Expanded(child: Container(height: 5,color: fieldGrey,));
  Widget processEnable()=> SvgPicture.asset(AppIcons.processEnable,width: 24,height: 24,);
  Widget processDisable()=> SvgPicture.asset(AppIcons.processDisable,width: 24,height: 24,);

  @override
  Widget build(BuildContext context) =>Row(children: [
   processEnable(),
    box(),
    processEnable(),
    box(),
    processEnable(),
    box(),
    processEnable(),
    boxDis(),
    processDisable(),
    boxDis(),
    processDisable(),
    boxDis(),
    processDisable(),
    boxDis(),
    processDisable(),

  ],);
}
