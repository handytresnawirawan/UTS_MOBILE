import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      home: MyHomePage(title: 'Tracert.id'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Profile(),
          Divider(),
          MenuUtama(),
          Promo(),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://source.unsplash.com/ZHvM3XIOHoE/"))),
        ),
        title: Text(
          "Handy Tresna Wirawan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: <Widget>[
            RaisedButton.icon(
              icon: Icon(Icons.album),
              label: Text("356 Poin"),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
            RaisedButton(
              child: Text("BumPay"),
              onPressed: () {},
              color: Colors.grey[200],
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
            )
          ],
        ),
      ),
    );
  }
}

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 4,
      children: menuUtamaItem,
    );
  }
}

List<MenuUtamaItems> menuUtamaItem = [
  MenuUtamaItems(
    title: "Laptop",
    icon: Icons.laptop_mac,
    colorBox: Colors.green,
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Mouse",
    icon: Icons.mouse,
    colorBox: Colors.green[900],
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Keyboard",
    icon: Icons.keyboard,
    colorBox: Colors.orange,
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Tablet",
    icon: Icons.tablet_mac,
    colorBox: Colors.green[300],
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Smart Phone",
    icon: Icons.phone_android,
    colorBox: Colors.orange,
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Printer",
    icon: Icons.print,
    colorBox: Colors.orange[300],
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Scaner",
    icon: Icons.scanner,
    colorBox: Colors.green,
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Jaringan",
    icon: Icons.router,
    colorBox: Colors.blue[300],
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Speker",
    icon: Icons.speaker,
    colorBox: Colors.green[900],
    colorIcon: Colors.white,
  ),
  MenuUtamaItems(
    title: "Semua Produk",
    icon: Icons.blur_on,
    colorBox: Colors.grey,
    colorIcon: Colors.black,
  )
];

class MenuUtamaItems extends StatelessWidget {
  MenuUtamaItems({this.title, this.icon, this.colorBox, this.colorIcon});
  final String title;
  final IconData icon;
  final Color colorBox, colorIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color: colorBox,
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: colorIcon,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}



class Promo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            'Promo Saat Ini',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22.0),
          ),
          trailing: IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {},
          ),
        ),
        Container(
          width: double.infinity,
          height: 150.0,
          padding: const EdgeInsets.only(left: 8.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.green,
                        Colors.green[800],
                      ]),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                // padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(left: 8.0),
                height: 150.0,
                width: 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow[300],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.elliptical(20.0,20.0),
                                bottomRight: Radius.elliptical(150.0, 150.0)
                            )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2.0, left: 5.0, right: 30.0, bottom: 30.0),
                          child: Text('80%', style: TextStyle(fontSize: 24.0,color: Colors.black),),
                        )),
                    Expanded(
                      child: Container(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lihat Semua \nPromo',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 18.0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.green,
                          Colors.green[800],
                        ]),
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: AssetImage('images/promo.jpeg'))),
                margin: EdgeInsets.only(left: 10.0),
                height: 150.0,
                width: 300.0,
                child: null,
              )
            ],
          ),
        )
      ],
    );
  }
}
