
import 'package:chat_app/presentation/bloc/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../injection_container.dart' as di; //Dependency injector

import '../core/configs/app_router.dart';

class MyAppChat extends StatelessWidget {
  const MyAppChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => di.sl<ChatUserBloc>())
      ],
      child: const MaterialApp(
        onGenerateRoute: AppRouter.customRouteGenerator,
      ),
    );
  }
}
