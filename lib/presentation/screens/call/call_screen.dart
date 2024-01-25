import 'package:chat_app/core/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../core/configs/footter_menu.dart';


class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

    @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: FooterMenu(context: context).getFooterMenu(1),
      body: Center(child: Text(emptyText, style: PrimaryFont.medium(16)),),
    );
  }
}