import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/models/appdata.dart';
import 'src/pages/home.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppData()),
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Health&You',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.deepPurpleAccent,
        ),
        routes: {
          '/home': (context) => HomePage(),
        },
        initialRoute: '/home',
    );
  }
}
