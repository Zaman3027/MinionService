import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Utils/HexColor.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.yellow, HexColor("#FBC43A")],
                  stops: [0.1, 1.0])),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 160.0, top: 160.0),
            child: Container(
              height: 200,
              child: Image.asset("image/card_image_five.png")),
          ),
        ),
        Container(
      padding: EdgeInsets.only(left: 0),
      child: Column(
        children: <Widget>[
          AppBar(
            leading: Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(FontAwesomeIcons.longArrowAltLeft)),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Cleaners",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Spacer()
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 15),
            child: Row(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          boxShadow: [
                            new BoxShadow(
                                color: Colors.grey, blurRadius: 2.0),
                          ],
                          shape: BoxShape.circle,
                          color: Colors.yellow,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("image/card_image.png"))),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Text(
                    "Amanda",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline
                        ),
                  ),
                ),
                Icon(
                  FontAwesomeIcons.female,
                  color: Colors.white,
                  size: 20,
                ),
                Spacer()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 23),
            child: Row(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                    style: TextStyle(color: Colors.white, fontSize: 18,
                    shadows: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                    )]
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    )
      ],
    );
  }
}
