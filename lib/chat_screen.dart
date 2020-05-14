import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './user_model.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import './message_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  ChatScreen({
    this.user,
  }); //should pass in chatroom id

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    return Column(
      children: [
        Container(
          margin: isMe
              ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 85.0, right: 10.0)
              : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 85.0, left: 10.0),
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
          child: Text(
            message.text,
            style: TextStyle(
              color: isMe ? Colors.white : Colors.black,
              fontSize: 15.0,
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
              bottomLeft: isMe ? Radius.circular(15.0) : Radius.circular(0.0),
              bottomRight: isMe ? Radius.circular(0.0) : Radius.circular(15.0),
            ),
            color: isMe ? Colors.lightBlue : Colors.grey[100],
          ),
        ),
        Container(
          margin: isMe
              ? EdgeInsets.only(right: 150.0)
              : EdgeInsets.only(left: 150.0),
          child: Text(
            message.time,
            style: TextStyle(
                color: Colors.blueGrey[400],
                fontSize: 12.0
            ),
          ),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Colors.lightBlue,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {}, //make message = value to update it
              decoration: InputDecoration.collapsed(
                hintText: 'Write a message...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Colors.lightBlue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: Theme.of(context).accentColor,
          elevation: 0.0,
          title: Text(
            widget.user.username,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(MdiIcons.informationOutline),
              iconSize: 30.0,
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    )),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 20.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
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
