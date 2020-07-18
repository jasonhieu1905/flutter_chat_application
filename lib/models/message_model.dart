import 'package:chat_application/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});
}

final User hieudoan = User(
  id: 0,
  name: 'Hieu Doan',
  imageUrl: 'hieu.jpg',
);

final User thao = User(
  id: 1,
  name: 'Thao',
  imageUrl: 'thao.jpg',
);

final User jason = User(
  id: 2,
  name: 'Jason',
  imageUrl: 'thang.png',
);

final User ronaldo = User(
  id: 3,
  name: 'sala',
  imageUrl: 'sala.jpg',
);

final User messi = User(
  id: 4,
  name: 'Messi',
  imageUrl: 'messi.png',
);

final User modric = User(
  id: 5,
  name: 'Luca Modric',
  imageUrl: 'ronaldo.jpg',
);

List<User> favorites = [hieudoan, thao, jason, ronaldo, messi, modric];

List<Message> chats = [
  Message(
      sender: thao,
      time: '5: 30PM',
      text: 'This is a very long text can make it break into a new line',
      isLiked: true,
      unread: true
  ),
  Message(
      sender: hieudoan,
      time: '5: 30PM',
      text: 'abc',
      isLiked: true,
      unread: true
  ),
  Message(
      sender: thao,
      time: '5: 30PM',
      text: 'This is a very long text can make it break into a new line',
      isLiked: true,
      unread: false
  ),
  Message(
      sender: hieudoan,
      time: '5: 30PM',
      text: 'abc',
      isLiked: true,
      unread: true
  ),
  Message(
      sender: thao,
      time: '5: 30PM',
      text: 'This is a very long text can make it break into a new line',
      isLiked: true,
      unread: false
  ),
];
