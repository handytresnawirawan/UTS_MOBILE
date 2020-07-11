import 'package:flutter/material.dart';


class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  String data = "QR Code Data";
  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("scan produk"),



    centerTitle: true,
    ),

        body: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

        //  Text(data, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
          RaisedButton.icon(
            icon: Icon(Icons.settings_overscan),
            label: Text("Scan QR"),
            onPressed: () {},
            color: Colors.green,
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
          ),
        ],

        ),

      );
  }
}

