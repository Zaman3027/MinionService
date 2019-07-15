import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.black12),
      padding: EdgeInsets.all(6),
      //color: Colors.black12,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 25,
            color: Colors.black54,
          ),
          border: InputBorder.none,
          hintText: "Search",
        ),
      ),
    );
  }
}
