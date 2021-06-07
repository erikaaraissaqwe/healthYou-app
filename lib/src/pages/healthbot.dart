import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';
import '../partials/customappbar.dart';
import '../partials/customdrawer.dart';

// ignore: must_be_immutable
class HealthBotPage extends StatelessWidget {
  TextStyle styles = TextStyle(
      fontFamily: 'cursive', fontSize: 24, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppData>(
      builder: (context, appdata, child) => Scaffold(
        appBar: customAppBar(pageContext: context, title: 'Health Bot'),
        drawer: customDrawer(pageContext: context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Bem vinda ao',
                  style: styles,
                ),
              ),
              Image.asset(
                'assets/logo.PNG',
                width: 200,
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  'Seu assistente pessoal de saúde',
                  style: styles,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}