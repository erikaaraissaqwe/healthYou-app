import 'package:flutter/material.dart';

class ArticleBox extends StatelessWidget {
  ArticleBox({required this.data, required this.onTap});
// width: 380,
  // height: 170,
  final data;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 380,
      margin: EdgeInsets.only(bottom: 5, top: 5),
      child: GestureDetector(
        onTap: (){
          onTap(data);
        },
        child: Stack(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 5/2,
              child: Container(
                margin: EdgeInsets.only(bottom: 5, top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey 
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  data['image'],
                  fit: BoxFit.cover
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter, 
                    colors: [Colors.transparent, Colors.black]
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 8,
              child: Text(
                data['title'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'monospace'
                 ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
