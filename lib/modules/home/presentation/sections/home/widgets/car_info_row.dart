import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarInfoRow extends StatelessWidget {
  final String title;
  final String value;

  const CarInfoRow({required this.title, required this.value, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding:const  EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 16),
            ),
           const  Spacer(),
           const  SizedBox(width: 10,),
            Text(
              value,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ],
        ),
      );
}
