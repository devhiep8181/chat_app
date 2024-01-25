
import 'package:chat_app/core/utils/utils.dart';
import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(emptyText, style: PrimaryFont.medium(16)),),
    );
  }
}