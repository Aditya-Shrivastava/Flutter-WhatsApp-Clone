import 'package:flutter/material.dart';
import 'pages/camera.dart';
import 'pages/chats.dart';
import 'pages/calls.dart';
import 'pages/status.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  final List<Tab> myTabs = <Tab> [
    Tab(icon: new Icon(Icons.camera_alt),),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),
          Icon(Icons.more_vert)
        ],
        elevation: 0.5,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Camera(),
          Chats(),
          Status(),
          Calls()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message, color: Colors.white,),
        onPressed: () {},
      ),
    );
  }
}