import 'package:flutter/material.dart';
import 'package:myapp/Models/SelectCategoryModel.dart';

 class  ListUtils{
  static var listOFSelectCategeory =[
    new SelectCategoryModel(
        //color: HexColor("#f5bab5"),
        text: "Cleaning Service",
        image: AssetImage("image/card_image.png")
    ),
     new SelectCategoryModel(
        //color: HexColor(""),
        text: "Cleaning Appliance",
        image: AssetImage("image/card_image_two.png")
    ),
     new SelectCategoryModel(
        //color: HexColor(""),
        text: "Baby Sitter Service",
        image: AssetImage("image/card_image_three.png")
    ),
     new SelectCategoryModel(
        //color: HexColor(""),
        text: "Spa Service",
        image: AssetImage("image/card_image_four.png")
    ),
    new SelectCategoryModel(
        //color: HexColor(""),
        text: "Tution",
        image: AssetImage("image/card_image_five.png")
    ),

  ];
}