import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../partials/customdrawer.dart';

// ignore: must_be_immutable
class ArticlePage extends StatelessWidget {
  TextStyle styles = TextStyle(
      fontFamily: 'cursive', fontSize: 24, fontWeight: FontWeight.bold);

  void backButtonAction(pageContext) {
    Navigator.pop(pageContext);
  }

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? articleData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        drawer: customDrawer(pageContext: context),
        body: Stack(
          children: <Widget>[
            ListView(
              physics: ClampingScrollPhysics(),
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 220),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                              top: 35,
                              bottom: 15,
                              right: 15,
                              left:15,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  articleData!['title'], 
                                  style: TextStyle(
                                    fontFamily: 'cursive', 
                                    fontSize: 24, 
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        left:15,
                        right: 15,
                        bottom: 10,
                      ),
                      child: Text(
                        articleData['text'], 
                        style: TextStyle(
                          fontFamily: 'monospace', 
                          fontSize: 16, 
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 250,
              child: Image.network(
                articleData['image'],
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: statusBarHeight),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  backButtonAction(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
