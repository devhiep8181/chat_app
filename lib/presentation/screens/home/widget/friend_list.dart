import 'package:chat_app/core/utils/utils.dart';
import 'package:chat_app/presentation/bloc/blocs.dart';
import 'package:chat_app/presentation/widgets/avatar_widget.dart';
import 'package:chat_app/presentation/widgets/custom_decorated_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserModel {
  String? name;
  String? avatar;
  String? text;

  UserModel({required this.name, required this.avatar, required this.text});
}

List<UserModel> userList = [
  UserModel(
      name: "Jonh",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Hello Boy"),
  UserModel(
      name: "Joit",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Woooooooooo"),
  UserModel(
      name: "Ahihi",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi di choi khong cu"),
  UserModel(
      name: "Baby",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "EeLeu",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Jonh",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Joit",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Ahihi",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Baby",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "EeLeu",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Jonh",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Joit",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Ahihi",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Baby",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "EeLeu",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Jonh",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Joit",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Ahihi",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "Baby",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
  UserModel(
      name: "EeLeu",
      avatar: 'https://www.woolha.com/media/2020/03/eevee.png',
      text: "Toi khong di choi duoc roi"),
];

class FriendList extends StatefulWidget {
  const FriendList({super.key});

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  @override
  void initState() {
    super.initState();
    context.read<ChatUserBloc>().add(GetListChatUser());
  }

  @override
  Widget build(BuildContext context) {
    return CustomDecoratedContainer(
      topLeftRadius: 40,
      topRightRadius: 40,
      gradient: kVioletGradient,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(friendsText,
                style: PrimaryFont.medium(18).copyWith(color: kColorWhite)),
          ),
          Expanded(child: _buildListItem())
        ],
      ),
    );
  }

  Widget _buildListItem() {
    return BlocBuilder<ChatUserBloc, ChatUserState>(
        builder: (BuildContext context, ChatUserState state) {
      print('calllllllUserbloc');
      print('stateUserBLoc: $state');
      if (state is ChatUserLoadingState) {
        print('state loading');
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is ChatUserLoadedState) {
        print('state loaded');
        return ListView.builder(
            // shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: state.listChatUser.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  children: [
                    const AvatarWidget(
                      colorRoundThird: kColorRoyalPurple,
                      radiusRoundThird: 30,
                      radiusRoundSecond: 26,
                      radiusRoundFirst: 22,
                      backgroundImage: NetworkImage(imageSample),
                    ),
                    Text(
                      state.listChatUser[index].name,
                      style:
                          PrimaryFont.medium(14).copyWith(color: kColorWhite),
                    ),
                  ],
                ),
              );
            });
      } else {
        return const Center(child: Text('Có lỗi xảy ra vui lòng thử lại'));
      }
    });
  }
}
