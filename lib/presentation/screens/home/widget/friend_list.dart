import 'package:chat_app/core/utils/utils.dart';
import 'package:chat_app/presentation/widgets/avatar_widget.dart';
import 'package:chat_app/presentation/widgets/custom_decorated_container.dart';
import 'package:flutter/material.dart';

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

class FriendList extends StatelessWidget {
  const FriendList({super.key});

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
          Flexible(
            child: _buildListItem(),
          )
        ],
      ),
    );
  }

  Widget _buildListItem() {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Column(
              children: [
                AvatarWidget(
                  colorRoundThird: kColorRoyalPurple,
                  radiusRoundThird: 30,
                  radiusRoundSecond: 26,
                  radiusRoundFirst: 22,
                  backgroundImage: NetworkImage(userList[index].avatar ?? ""),
                ),
                Text(
                  userList[index].name ?? "",
                  style: PrimaryFont.medium(14).copyWith(color: kColorWhite),
                ),
              ],
            ),
          );
        });
  }
}
