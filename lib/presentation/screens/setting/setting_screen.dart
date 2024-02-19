import 'package:chat_app/core/utils/utils.dart';
import 'package:chat_app/domain/entites/user/user_entity.dart';
import 'package:chat_app/presentation/screens/sign_in/widgets/sign_in_with_google.dart';
import 'package:chat_app/presentation/widgets/custom_eleveted_button.dart';
import 'package:flutter/material.dart';
import '../../../core/configs/configs.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  UserEntity? userEntity;
  @override
  void initState() {
   // getUser();
    super.initState();
  }

  // void getUser() async {
  //   UserEntity? user = await getUserFromSharedPreferences();
  //   if (user != null) {
  //     setState(() {
  //       userEntity = user;
  //     });
  //   }
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: FooterMenu(context: context).getFooterMenu(3),
        body: Column(
          children: [
            // Expanded(
            //     child: Column(
            //   children: [
            //     AvatarWidget(
            //       radiusRoundThird: 40,
            //       radiusRoundSecond: 40,
            //       radiusRoundFirst: 40,
            //       backgroundImage: isGooglePhotoUrl(userEntity?.photoURL ?? "") ? NetworkImage(userEntity?.photoURL ?? "") : Image.asset("assets/icons/rose.png").image,
            //       colorRoundThird: kColorTransparent,
            //       colorRoundSecond: kColorTransparent,
            //     ),
            //     Text(
            //       userEntity?.displayName ?? "",
            //       style: PrimaryFont.medium(16).copyWith(color: kColorBlack),
            //     ),
            //   ],
            // )),
            Flexible(
              fit: FlexFit.loose,
              child: CustomElevetedButton(
                  buttonText: "Log Out",
                  onPressed: () {
                    signOutGoogle();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        signInScreen, (route) => false);
                  },
                  backgroundColor: kColorRoyalBule,
                  textStyle:
                      PrimaryFont.medium(16).copyWith(color: kColorWhite)),
            ),
          ],
        ));
  }
}
