import 'package:chat_application/models/message_model.dart';
import 'package:chat_application/screens/chat.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favorites Contacts',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  iconSize: 30,
                  color: Colors.blueGrey,
                )
              ],
            ),
          ),
          Container(
            height: 120,
            child: ListView.builder(
              padding: EdgeInsets.only(left: 10),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  final favorite = favorites[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => ChatScreen(user: favorite),
                      ));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('assets/images/${favorite.imageUrl}'),
                            ),
                            SizedBox(height: 6),
                            Text(
                              favorites[index].name,
                              style: TextStyle(
                                color: Colors.blueGrey[900],
                                fontSize: 16,
                              ),
                            )
                          ]),
                    ),
                  );
                },
            ),
          )
        ],
      ),
    );
  }
}
