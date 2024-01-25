import 'package:chat_app/core/configs/app_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> navbarItems = [
  {
    "index": 0,
    "label": "Chat",
    "icon": FontAwesomeIcons.comment,
    "router": homeScreen,
  },
  {
    "index": 1,
    "label": "Calls",
    "icon": FontAwesomeIcons.phone,
    "router": emptyScreen,
  },
  {
    "index": 2,
    "label": "Status",
    "icon": FontAwesomeIcons.barsStaggered,
    "router": emptyScreen,
  },
  {
    "index": 3,
    "label": "Settings",
    "icon": FontAwesomeIcons.gear,
    "router": emptyScreen,
  },

];