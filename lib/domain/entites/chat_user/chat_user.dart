class ChatUser {
  String image;
  String lastActive;
  String name;
  bool isOnline;
  String id;
  String pushToken;
  String email;
  String createAt;

  ChatUser({
    required this.image,
    required this.lastActive,
    required this.name,
    required this.isOnline,
    required this.id,
    required this.pushToken,
    required this.email,
    required this.createAt,
  });
}
