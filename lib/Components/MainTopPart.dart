import 'package:flutter/material.dart';
import 'package:myapp/Models/SelectCategoryModel.dart';

import 'CategoryHeading.dart';
import 'SaerchBar.dart';
import 'SelectCategoryCard.dart';

class MainTopPart extends StatelessWidget {
  const MainTopPart({
    Key key,
    @required this.listOFSelectCategeory,
  }) : super(key: key);

  final List<SelectCategoryModel> listOFSelectCategeory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 15, end: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Online Selection Service",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
          ),
          new SearchBar(),
          CategoryHeading(
            heading: "Select Category",
          ),
          Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                SelectCategoryModel model = listOFSelectCategeory[index];
                return SelectCategoryCard(
                  name: model.getText(),
                  image: model.getImage(),
                  color: Colors.cyan,
                );
              },
              itemCount: listOFSelectCategeory.length,
            ),
          ),
          CategoryHeading(
            heading: "Our Best",
            isButtonVisible: false,
          ),
        ],
      ),
    );
  }
}