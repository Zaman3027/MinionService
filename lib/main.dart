import 'package:flutter/material.dart';
import 'package:myapp/Components/CategoryHeading.dart';
import 'package:myapp/Components/MainTopPart.dart';
import 'package:myapp/Models/SelectCategoryModel.dart';
import 'package:myapp/Pages/Details.dart';
import 'package:myapp/Utils/HexColor.dart';
import 'Components/CleanersCard.dart';
import 'Components/SaerchBar.dart';
import 'Components/SelectCategoryCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _currentIndex;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  static var listOFSelectCategeory = [
    new SelectCategoryModel(
        color: Colors.cyan,
        text: "Cleaning Service",
        image: AssetImage("image/card_image.png")),
    new SelectCategoryModel(
        color: Colors.cyanAccent,
        text: "Cleaning Appliance",
        image: AssetImage("image/card_image_two.png")),
    new SelectCategoryModel(
        color: Colors.grey,
        text: "Baby Sitter Service",
        image: AssetImage("image/card_image_three.png")),
    new SelectCategoryModel(
        color: Colors.greenAccent,
        text: "Spa Service",
        image: AssetImage("image/card_image_four.png")),
    new SelectCategoryModel(
        color: Colors.yellowAccent,
        text: "Tution",
        image: AssetImage("image/card_image_five.png")),
  ];

  var pages = [
    CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            "Minions Service",
            style:
                TextStyle(color: Colors.grey, fontSize: 15, letterSpacing: 5),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            new MainTopPart(listOFSelectCategeory: listOFSelectCategeory),
          ]),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Details()));
                },
                child: CleanersCard());
          }),
        )
      ],
    ),
    Container(
      child: Center(child: Text("Orders")),
    ),
    Container(
      child: Center(child: Text("Cards")),
    ),
    Container(
      child: Center(child: Text("Mines")),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int currentIndex) {
          setState(() {
            _currentIndex = currentIndex;
          });
        },
        iconSize: 24,
        selectedItemColor: HexColor("#FBC43A"),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.shifting,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_drive_file), title: Text("Order")),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), title: Text("Card")),
          BottomNavigationBarItem(icon: Icon(Icons.face), title: Text("Mine")),
        ],
      ),
    );
  }
}
