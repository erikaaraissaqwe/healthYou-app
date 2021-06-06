import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({
  required BuildContext pageContext,
  String title = 'Health & You',
  bool hideSearch = false,

}) {

  void searchAction() {
    Navigator.popAndPushNamed(pageContext, '/search');
  }

  return AppBar(
    backgroundColor: Colors.red[900],
    elevation: 0,
    automaticallyImplyLeading: true,
    title: Text(
      title,
      style: TextStyle(
          fontFamily: 'cursive',
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold),
    ),
    actions: <Widget>[
      !hideSearch
          ? IconButton(
              onPressed: searchAction,
              icon: Icon(Icons.search, color: Colors.white, size: 30),
            )
          : Container(),
    ],
  );
}
