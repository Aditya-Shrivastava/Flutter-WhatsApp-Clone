import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/message_model.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) =>
        Column(children: <Widget>[
          Divider(height: 10.0,),
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(messages[index].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  messages[index].user,
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),
                Column(
                  children: <Widget>[
                    Text(
                      messages[index].time,
                      style: messages[index].isRead ? TextStyle(fontSize: 12.0, color: Colors.grey) : TextStyle(fontSize: 12.0, color: Theme.of(context).accentColor)
                    ),
                    !messages[index].isRead ? 
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Center(child: Text('1', style: TextStyle(color: Colors.white, fontSize: 12.0))),
                    ) : Text(' '),
                  ]
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                messages[index].message,
                style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w600)
              ),
            ),
          )
        ],
        )
    );
  }
}