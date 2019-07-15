import 'package:flutter/material.dart';

class SelectCategoryCard extends StatelessWidget {
  final String name;
  final AssetImage image;
  final Color color;

  const SelectCategoryCard({
    Key key,
    @required this.name,
    @required this.image,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      color: color,
      child: Container(
        width: 125,
        height: 220,
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 20),
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: image,
                  alignment: Alignment.bottomRight)),
        ),
      ),
    );
  }
}
