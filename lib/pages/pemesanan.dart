import 'package:flutter/material.dart';

class Pemesanan extends StatefulWidget {
  @override
  _PemesananState createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("pemesanan"),
          centerTitle: true,
        )
    );
  }
}