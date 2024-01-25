import 'package:flutter/material.dart';

import '../core/configs/app_router.dart';

class MyAppChat extends StatelessWidget {
  const MyAppChat({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: AppRouter.customRouteGenerator,
    );
  }
}
