import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("inbox"),
    centerTitle: true,
    )
      );
  }
}