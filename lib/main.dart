import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/models/appdata.dart';
import 'src/pages/home.dart';
import 'src/pages/preload.dart';
import 'src/pages/search.dart';

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
          brightness: Brightness.light,
          primaryColor: Colors.red[800],
          accentColor: Colors.red[600],
        ),
        routes: {
          '/preload': (context) => PreloadPage(),
          '/home': (context) => HomePage(),
          '/search': (context) => SearchPage(),
          '/healthbot': (context) => SearchPage(),
        },
        initialRoute: '/preload',
    );
  }
}
