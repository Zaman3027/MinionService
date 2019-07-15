import 'package:flutter/material.dart';

class SelectCategoryModel {
  final String text;
  final Color color;
  final AssetImage image;

  SelectCategoryModel({this.text, this.color, this.image});

  String getText(){
    return this.text;
  }
  Color getColor(){
    return this.color;
  }

  AssetImage getImage(){
    return image;
  }
}
