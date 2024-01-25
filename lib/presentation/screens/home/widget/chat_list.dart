
import 'package:chat_app/presentation/screens/home/widget/friend_list.dart';
import 'package:chat_app/presentation/widgets/avatar_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import '../../../widgets/custom_decorated_container.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomDecoratedContainer(
      topLeftRadius: 40,
      topRightRadius: 40,
      colorBoxDecoration: kColorJetBlack,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(chatText,
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
        scrollDirection: Axis.vertical,
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: AvatarWidget(backgroundImage: NetworkImage(userList[index].avatar ?? ""),),
            title: Text(userList[index].text ?? "", style: PrimaryFont.medium(14).copyWith(color: kColorWhite),),
            subtitle: Text(userList[index].text ?? "", style: PrimaryFont.medium(14).copyWith(color: kColorWhite),),
          );
        });
  }
}
