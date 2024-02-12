import 'package:chat_app/core/configs/app_router.dart';
import 'package:chat_app/core/configs/footter_menu.dart';
import 'package:chat_app/core/utils/utils.dart';
import 'package:chat_app/presentation/bloc/blocs.dart';

import 'package:chat_app/presentation/screens/home/widget/chat_list.dart';
import 'package:chat_app/presentation/screens/home/widget/friend_list.dart';
import 'package:chat_app/presentation/widgets/avatar_widget.dart';
import 'package:chat_app/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        print('UserStatett: ${state.user.photoURL}');
        return Scaffold(
            backgroundColor: kColorBlack,
            bottomNavigationBar: FooterMenu(context: context).getFooterMenu(0),
            appBar: AppBar(
              backgroundColor: kColorBlack,
              title: Text(messagesText,
                  style: PrimaryFont.medium(20).copyWith(color: kColorWhite)),
              actions: [
                //Image.network(userEntity?.photoURL ?? ''),
                AvatarWidget(
                    onTap: () {
                      Navigator.of(context).pushNamed(settingScreen);
                    },
                    backgroundImage:
                        Image.network('${state.user.photoURL}').image)
              ],
            ),
            body: const Column(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    lableText: labelSearchText,
                    prefixIcon: Icon(Icons.search),
                    borderRadius: 30,
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        FriendList(),
                        Positioned(
                            top: 120,
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: ChatList()),
                      ],
                    )),
              ],
            ));
      },
    );
  }
}
