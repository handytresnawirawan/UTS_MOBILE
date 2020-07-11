import 'package:tracertidapps/pages/akun.dart';
import 'package:tracertidapps/pages/home.dart';
import 'package:tracertidapps/pages/inbox.dart';
import 'package:tracertidapps/pages/pemesanan.dart';
import 'package:tracertidapps/pages/simpan.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _layoutPage= [
    Home(),
    Simpan(),
    Pemesanan(),
    Inbox(),
    Akun()
  ];

  void _onTabItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('rumah')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('Produk')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list),
              title: Text('Pemesanan')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_overscan),
              title: Text('scan QR')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Akun Saya')
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
