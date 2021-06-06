import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../partials/customappbar.dart';
import '../partials/customdrawer.dart';

// ignore: must_be_immutable
class ArticlePage extends StatelessWidget {
  TextStyle styles = TextStyle(
      fontFamily: 'cursive', fontSize: 24, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? articleData = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    print(articleData!['title']);
    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        appBar: customAppBar(
            pageContext: context, hideSearch: true, title: 'Artigo'),
        drawer: customDrawer(pageContext: context),
        body: Center(),
      ),
    );
  }
}
