import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


//usage Icon(Icons.info).onTap(() => print('Tapped!'))
extension ExTapExtension on Widget {
  Widget onTap(VoidCallback onTap) =>
      GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: this,
      );
}

//anyList.mapIndexed((i, item) => Text('$i: $item'))
extension ExIndexedMap<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int index, E element) f) {
    var i = 0;
    return map((e) => f(i++, e));
  }
}

/*
Text(
  'Hello, Flutter!',
  style: context.textTheme.headlineSmall,
)
 */
extension Extheme on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
// more if you want
}