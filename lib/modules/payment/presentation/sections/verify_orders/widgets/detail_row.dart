import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailRow extends StatelessWidget {
  final String title;
  final String value;

  const DetailRow({required this.title, required this.value, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.w400, fontSize: 13),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
                child: Text(
              value,
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 13),
            ))
          ],
        ),
      );
}
