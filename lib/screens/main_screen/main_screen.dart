import 'package:flutter/material.dart';
import 'package:watch_store_by_me/res/strings.dart';
import 'package:watch_store_by_me/screens/main_screen/basket_screen.dart';
import 'package:watch_store_by_me/screens/main_screen/home_screen.dart';
import 'package:watch_store_by_me/screens/main_screen/profile_screen.dart';
import 'package:watch_store_by_me/widgets/btm_nav_item.dart';

import '../../gen/assets.gen.dart';

class BtmNavScreensIndex {
  BtmNavScreensIndex._();
  static const home = 0;
  static const basket = 1;
  static const profile = 2;
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<int> routeHistory = [BtmNavScreensIndex.home];

  var selectedindex = BtmNavScreensIndex.home;
  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _basketKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

  late final map = {
    BtmNavScreensIndex.home: _homeKey,
    BtmNavScreensIndex.basket: _basketKey,
    BtmNavScreensIndex.profile: _profileKey,
  };

  Future<bool> _onWillPop() async {
    if (map[selectedindex]!.currentState!.canPop()) {
      map[selectedindex]!.currentState!.pop();
    } else if (routeHistory.length > 1) {
      routeHistory.removeLast();
      setState(() {
        selectedindex = routeHistory.last;
      });
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            ///main
            Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: size.height * .1,
                child: IndexedStack(
                  index: selectedindex,
                  children: [
                    Navigator(
                      key: _homeKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                    Navigator(
                      key: _basketKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const BasketScreen(),
                      ),
                    ),
                    Navigator(
                      key: _profileKey,
                      onGenerateRoute: (settings) => MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    ),
                  ],
                )),

            ///btm nav
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: size.height * .1,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BtmNavItem(
                          iconSvgPath: Assets.svg.user,
                          onTap: () {
                            btmNavOnPress(index: 2);
                          },
                          text: AppStrings.profile,
                          isActive:
                              selectedindex == BtmNavScreensIndex.profile),
                      BtmNavItem(
                          iconSvgPath: Assets.svg.basket,
                          onTap: () {
                            btmNavOnPress(index: 1);
                          },
                          text: AppStrings.basket,
                          isActive: selectedindex == BtmNavScreensIndex.basket),
                      BtmNavItem(
                          iconSvgPath: Assets.svg.home,
                          onTap: () {
                            btmNavOnPress(index: 0);
                          },
                          text: AppStrings.home,
                          isActive: selectedindex == BtmNavScreensIndex.home),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  btmNavOnPress({required int index}) {
    setState(() {
      selectedindex = index;
      routeHistory.add(index);
    });
  }
}
