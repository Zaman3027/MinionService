import 'package:flutter/material.dart';

class CategoryHeading extends StatelessWidget {
  final String heading;
  final String buttonText;
  final bool isButtonVisible;

  const CategoryHeading(
      {Key key, @required this.heading, this.buttonText = "More", this.isButtonVisible = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            heading,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          isButtonVisible==true? FlatButton(
            onPressed: () {},
            child: Row(
              children: <Widget>[
                Text(
                  buttonText,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Icon(Icons.arrow_right, color: Colors.grey, size: 20)
              ],
            ),
          ):Container()
        ],
      ),
    );
  }
}
