import 'package:chat_app/core/configs/app_router.dart';
import 'package:chat_app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterMenu {
  late BuildContext context;
  FooterMenu({
    required this.context,
  });

  void goScreen(int newScreen) {
    switch (newScreen) {
      case 0:
        Navigator.of(context).popAndPushNamed(homeScreen);
        break;
      case 1:
        Navigator.of(context).popAndPushNamed(callScreen);
        break;
      case 2:
        Navigator.of(context).popAndPushNamed(statusScreen);
        break;
      case 3:
        Navigator.of(context).popAndPushNamed(settingScreen);
        break;
    }
  }

  getFooterMenu(int index) {
    var bottomNavigatorBar = BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: kColorWhite,
      showSelectedLabels: true,
      unselectedItemColor: kColorDimGray,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.comment), label: "Chat"),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.phone), label: "Calls"),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.barsStaggered), label: "Status"),
        BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.gear), label: "Settings")
      ],
      onTap: (int index) {
        goScreen(index);
      },
    );

    var theme = Theme(
        data: Theme.of(context).copyWith(canvasColor: kColorTransparent),
        child: bottomNavigatorBar);
    return theme;
  }
}
