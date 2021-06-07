import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar({
  required BuildContext pageContext,
  String title = 'Health & You',
}) {

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
  );
}
