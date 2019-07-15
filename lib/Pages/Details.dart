import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Components/CapabilityIndex.dart';
import 'package:myapp/Components/CategoryHeading.dart';
import 'package:myapp/Components/DetailBody.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

List<Color> colors = new List();

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              padding: EdgeInsets.symmetric(horizontal: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              child: Text(
                "Hire",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.yellow,
              elevation: 5,
              hoverColor: Colors.yellow[500],
              splashColor: Colors.yellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(FontAwesomeIcons.windowClose,
                  color: Colors.white,),
              elevation: 5,
              hoverColor: Colors.yellow[500],
              backgroundColor: Colors.pink[200],
            ),
          ),
        ],
      ),
        body: CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate([
            
            Hero(
              tag: "photo-hero",
              child: DetailsBody()),
            CategoryHeading(
              heading: "Capability Index",
              isButtonVisible: false,
            ),
            CapabilityIndex(
              heading: "Clean",
              color: Colors.yellow,
              icon: Icon(FontAwesomeIcons.brush, color: Colors.white),
              participants: "50",
            ),
            CapabilityIndex(
              heading: "Attitude",
              color: Colors.purple,
              icon: Icon(FontAwesomeIcons.heart, color: Colors.white),
              participants: "42",
            ),
            CapabilityIndex(
              heading: "Satisfaction",
              color: Colors.pinkAccent,
              icon: Icon(FontAwesomeIcons.smile, color: Colors.white),
              participants: "112",
            ),
            Container(
              height: 55,
            )
          ]),
        )
      ],
    ));
  }
}
