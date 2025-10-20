import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class _ColorfulTab extends StatelessWidget {
  final String activeSvg;
  final String inactiveSvg;

  const _ColorfulTab({
    required this.activeSvg,
    required this.inactiveSvg,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Builder(
        builder: (BuildContext context) {
          final isActive = _isTabActive(context);
          return SvgPicture.asset(
            isActive ? activeSvg : inactiveSvg,
            width: 24,
            height: 24,
          );
        },
      ),
    );
  }

  bool _isTabActive(BuildContext context) {
    final TabController controller = DefaultTabController.of(context);
    final int currentIndex = controller.index;
    final int tabIndex = _getTabIndex(context);

    return currentIndex == tabIndex;
  }

  int _getTabIndex(BuildContext context) {
    final TabBar tabBar = context.findAncestorWidgetOfExactType<TabBar>()!;
    final List<Widget> tabs = tabBar.tabs;

    for (int i = 0; i < tabs.length; i++) {
      if (tabs[i] == this) return i;
    }
    return -1;
  }
}