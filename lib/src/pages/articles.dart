import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../partials/customappbar.dart';
import '../partials/customdrawer.dart';
import '../partials/articlebox.dart';

// ignore: must_be_immutable
class ArticlesPage extends StatelessWidget {
  TextStyle styles = TextStyle(
      fontFamily: 'cursive', fontSize: 24, fontWeight: FontWeight.bold);

  void articleBoxAction(pageContext, articleData) {
    Navigator.pushNamed(pageContext, '/articleInfo', arguments: articleData);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        appBar: customAppBar(pageContext: context, title: 'Artigos'),
        drawer: customDrawer(pageContext: context),
        body: ListView.builder(
            itemCount: appdata.data.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 170,
                    width: 380,
                    child: ArticleBox(
                      data: appdata.data[index],
                      onTap: (articleData) {
                        articleBoxAction(context, articleData);
                      },
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
