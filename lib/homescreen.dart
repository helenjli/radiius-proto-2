import 'package:flutter/material.dart';
import './recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0 + MediaQuery.of(context).padding.top),
        child: SafeArea(
          child: AppBar(
            elevation: 0.0,
            title: Text(
              'Messages',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                iconSize: 30.0,
                onPressed: () {},
              ),
            ],
            bottom: PreferredSize(
              child: Container(
                color: Colors.grey[100],
                height: 2.5,
              ),
            ),
          ),
        ),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              children: <Widget>[
                RecentChats(),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
