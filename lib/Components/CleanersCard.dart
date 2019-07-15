import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CleanersCard extends StatelessWidget {
  const CleanersCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Container(
        height: 145,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.yellow,
                  image: DecorationImage(
                      image: AssetImage("image/card_image_five.png"),
                      alignment: Alignment.centerLeft)),
              width: 125,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Amanda",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      Spacer(),
                      Icon(
                        FontAwesomeIcons.female,
                        size: 16,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.amber,
                        size: 20,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("40 year old", style: TextStyle(fontSize: 12)),
                      Spacer(),
                      Icon(
                        FontAwesomeIcons.coins,
                        size: 12,
                        color: Colors.amber,
                      )
                    ],
                  ),
                ],
              ),
              width: 180,
            ),
          ],
        ),
      ),
    );
  }
}
