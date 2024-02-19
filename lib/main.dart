import 'package:chat_app/firebase_options.dart';
import 'package:chat_app/simple_bloc_obsever.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injection_container.dart' as di; //Dependency injector

import 'presentation/my_app_chat.dart';

main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  di.init();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyAppChat());
}
