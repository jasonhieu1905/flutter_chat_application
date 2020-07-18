import 'package:chat_application/models/message_model.dart';
import 'package:chat_application/screens/chat.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
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
            itemCount: chats.length,
            itemBuilder: (context, index) {
              final chat = chats[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ChatScreen(user: chat.sender),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5, right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                      color: chat.unread ? Colors.pink[50] : Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/${chat.sender.imageUrl}'),
                              radius: 35,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  chats[index].sender.name,
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  child: Text(
                                    chats[index].text,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blueGrey,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              chats[index].time,
                              style: TextStyle(
                                color: Colors.grey[600],
                              ),
                            ),
                            SizedBox(height: 5,),
                            chat.unread
                                ? Container(
                                  width: 50,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    'New',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                              ) : SizedBox.shrink(),
                          ],
                        )
                      ]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
