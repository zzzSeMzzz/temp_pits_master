
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/modules/navigation/domain/entities/navbar.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/navigation/presentation/widgets/nav_bar_item.dart';
import 'package:pits_app/modules/navigation/presentation/widgets/tab_indicator.dart';


enum NavItemEnum { home, calls, messages, profile,  }

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  static Route route() =>
      MaterialPageRoute<void>(builder: (_) => const NavigationScreen());

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with TickerProviderStateMixin {
  late TabController _controller;

  final Map<NavItemEnum, GlobalKey<NavigatorState>> _navigatorKeys = {
    NavItemEnum.home: GlobalKey<NavigatorState>(),
    NavItemEnum.calls: GlobalKey<NavigatorState>(),
    NavItemEnum.messages: GlobalKey<NavigatorState>(),
    NavItemEnum.profile: GlobalKey<NavigatorState>(),

  };

  List<NavBar> labels = [];
  int _currentIndex = 0;
  DateTime? pauseTime;



  @override
  void initState() {

    _controller = TabController(length: 4, vsync: this);

    _controller.addListener(onTabChange);

    super.initState();
  }



  void onTabChange() => setState(() => _currentIndex = _controller.index);

  Widget _buildPageNavigator(NavItemEnum tabItem) => TabNavigator(
        navigatorKey: _navigatorKeys[tabItem]!,
        tabItem: tabItem,
      );

  void changePage(int index) {
    setState(() => _currentIndex = index);
    _controller.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    labels = [
      NavBar(
        title: 'Home',
        id: 0,
        icon: AppIcons.home,
      ),
      NavBar(
        title: 'Orders',
        id: 1,
        icon: AppIcons.navPhone,
      ),
      NavBar(
        title: 'Messages',
        id: 2,
        icon: AppIcons.navMessages,
      ),
      NavBar(
        title: 'Profile',
        id: 3,
        icon: AppIcons.user,
      ),

    ];
    return HomeTabControllerProvider(
      controller: _controller,
      child: WillPopScope(
        onWillPop: () async {
          final isFirstRouteInCurrentTab =
              !await _navigatorKeys[NavItemEnum.values[_currentIndex]]!
                  .currentState!
                  .maybePop();
          if (isFirstRouteInCurrentTab) {
            if (NavItemEnum.values[_currentIndex] != NavItemEnum.home) {
              changePage(0);
              return false;
            }
          }
          return isFirstRouteInCurrentTab;
        },
        child: AnnotatedRegion(
          value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light),
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            bottomNavigationBar: Container(
              height: 70 + MediaQuery.of(context).padding.bottom,
              decoration: BoxDecoration(
                color: white,
                // border: Border(
                //     top: BorderSide(color: Theme.of(context).dividerColor)),
                boxShadow: const [],
              ),
              child: TabBar(
                enableFeedback: true,
                onTap: (index) {},indicatorColor: Colors.transparent,

                controller: _controller,
                labelPadding: EdgeInsets.zero,
                tabs: List.generate(
                  labels.length,
                  (index) => NavItemWidget(
                    navBar: labels[index],
                    currentIndex: _currentIndex,
                  ),
                ),
              ),
            ),
            body: TabBarView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildPageNavigator(NavItemEnum.home),
                _buildPageNavigator(NavItemEnum.calls),
                _buildPageNavigator(NavItemEnum.messages),
                _buildPageNavigator(NavItemEnum.profile),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTabControllerProvider extends InheritedWidget {
  final TabController controller;

  const HomeTabControllerProvider({
    Key? key,
    required Widget child,
    required this.controller,
  }) : super(key: key, child: child);

  static HomeTabControllerProvider of(BuildContext context) {
    final HomeTabControllerProvider? result =
        context.dependOnInheritedWidgetOfExactType<HomeTabControllerProvider>();
    assert(result != null, 'No HomeTabControllerProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(HomeTabControllerProvider oldWidget) => false;
}
