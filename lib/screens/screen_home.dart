import 'package:flutter/material.dart';
import 'package:flutter_demo_app/screens/screen_calls.dart';
import 'package:flutter_demo_app/screens/screen_camera.dart';
import 'package:flutter_demo_app/screens/screen_chat.dart';
import 'package:flutter_demo_app/screens/screen_status.dart';
import 'package:flutter_demo_app/utils/utils.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext buildContext) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("WhatsApp"),
          elevation: 0.7,
          bottom: new TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                new Tab(icon: new Icon(Icons.camera_alt)),
                new Tab(
                  text: "CHATS",
                ),
                new Tab(text: "STATUS"),
                new Tab(text: "CALLS"),
              ]),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
            new Icon(Icons.more_vert),
            new Padding(padding: const EdgeInsets.symmetric(horizontal: 2.0)),
          ],
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen(),
            new ChatsScreen(),
            new StatusScreen(),
            new CallsScreen()
          ],
        ),
        floatingActionButton: Builder(builder: (BuildContext context) {
          return new FloatingActionButton(
              backgroundColor: Theme.of(context).accentColor,
              child: new Icon(
                Icons.message,
                color: Colors.white,
              ),
              onPressed: () {
                print("Chat button pressed");
                showSnackBar(context, "Chat button pressed");
              });
        }));
  }
}
