import 'package:flutter/material.dart';

void main() => runApp(Simpan());

class Simpan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Produk",
      home: new SearchListView(),
      theme: ThemeData(primaryColor: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SearchListView extends StatefulWidget {
  @override
  _SearchListViewState createState() => _SearchListViewState();
}

class _SearchListViewState extends State<SearchListView> {
  var etSearch = new TextEditingController();
  bool firstSearch = true;
  String query ="";

  List<String> dataList;
  List<String> filterList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    dataList = new List<String>();
    dataList = [
      "MSI PRESTIGE 15 COR I7 RAM 16 GB\n Rp. 22.000.000","ASUS ROG STRIX G531 \n Rp. 16.000.000",
      "DELL XPS 15 COR I7 2020 \n Rp. 35.000.000 ","ASUS ZENBOOK DUO UX481 COR I5 \n Rp.15.000.000",
      "PRINTER CANON IP2770 \n Rp.780.000","PRINTER EPSON L805 \n Rp.3.400.000","MOUSE LOGITECH B100 \n Rp.65.000",
      "KEYBOARD NYK RGB T32 \n Rp.500.000","ROUTER ZTE \n Rp.532.000","SCANER CANON S32 \n Rp.1.200.000",
      "SPEKER BOYA B100 \n Rp.345.000","MACKBOOK 16 2020 COR I9 RAM 16GB \n Rp.43.999.999"
    ];
    //sort data
    dataList.sort();
  }

  _SearchListViewState(){
    etSearch.addListener((){
      //menambahkan method yang akan dipanggil ketika object ada berubah
      if(etSearch.text.isEmpty){
        setState(() {
          firstSearch = true;
          query ="";
        });
      } else{
        //data tidak kosong
        setState(() {
          firstSearch = false;
          query = etSearch.text;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search ListView'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: new Column(
          children: <Widget>[
            //memanggil method untuk view search
            _createSearchView(),

            firstSearch ? _createListView(): _performSearch()
          ],
        ),
      ),
    );
  }

  Widget _createSearchView(){
    return new Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1.0)
      ),
      child: TextField(
        controller: etSearch,
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: new TextStyle(color: Colors.green)
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  //widget untuk listview
  Widget _createListView(){
    return new Flexible(
        child: new ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (BuildContext context, int index){
              return new Card(
                color: Colors.white,
                elevation: 5.0,
                child: new Container(
                  margin: EdgeInsets.all(15.0),
                  child: new Text("${dataList[index]}"),
                ),
              );
            }));
  }

  //membuat widget untuk hasil search
  Widget _performSearch(){
    filterList = new List<String>();
    for(int i=0; i<dataList.length;i++){
      var item = dataList[i];

      if(item.toLowerCase().contains(query.toLowerCase())){
        filterList.add(item);
      }
    }
    return _createFilteredListView();
  }

//membuat listview untuk hasil search
  Widget _createFilteredListView(){
    return new Flexible(
        child: new ListView.builder(
            itemCount: filterList.length,
            itemBuilder: (BuildContext context, int index){
              return new Card(
                color: Colors.white,
                elevation: 5.0,
                child: new Container(
                  margin: EdgeInsets.all(15.0),
                  child: new Text("${filterList[index]}"),
                ),
              );
            }));
  }
}