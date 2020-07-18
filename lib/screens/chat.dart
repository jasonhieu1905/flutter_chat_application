import 'package:chat_application/models/message_model.dart';
import 'package:chat_application/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {

    final msg = Container(
      margin: isMe
          ? EdgeInsets.only(top: 8, bottom: 8, left: 80)
          : EdgeInsets.only(top: 8, bottom: 8, right: 8),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: isMe ? Theme.of(context).accentColor : Colors.pink[50],
          borderRadius: isMe
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topLeft: Radius.circular(15),
                )
              : BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey),
          ),
          SizedBox(height: 8),
          Text(
            message.text,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blueGrey),
          ),
        ],
      ),
    );
    if (isMe) {
      return msg;
    }
    return Row(children: <Widget>[
      msg,
      IconButton(
        icon: message.isLiked
            ? Icon(Icons.favorite)
            : Icon(Icons.favorite_border),
        iconSize: 30,
        color:
            message.isLiked ? Theme.of(context).primaryColor : Colors.blueGrey,
        onPressed: () {},
      )
    ]);
  }

  _buildMessageComposer() {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {

              },
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message ...',
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send),
            iconSize: 25,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.user.name),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: 30,
            color: Colors.white,
          )
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: chats.length,
                    itemBuilder: (context, index) {
                      final Message message = chats[index];
                      final bool isMe = message.sender.id == hieudoan.id;
                      return _buildMessage(message, isMe);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
