
import 'package:chat_app/core/configs/app_router.dart';
import 'package:chat_app/presentation/screens/sign_in/widgets/sign_in_with_google.dart';
import 'package:flutter/widgets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      checkSignedIn(context);
    });
  }

  void checkSignedIn(BuildContext context) async {
    bool isLoggedIn = await googleSignIn.isSignedIn();
    print(isLoggedIn);
    Future.delayed(Duration.zero, () {
      if (isLoggedIn) {
        Navigator.of(context)
            .pushNamedAndRemoveUntil(homeScreen, (route) => false);
        return;
      }
      Navigator.of(context)
          .pushNamedAndRemoveUntil(signInScreen, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/icons/rose.png"),
      ],
    );
  }
}
