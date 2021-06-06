import 'package:flutter/material.dart';

Widget customDrawer({required BuildContext context}) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Column(
            children: <Widget>[
              Text(
                'Health & You',
                style: TextStyle(
                  fontFamily: 'cursive',
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Versão 1.0',
                style: TextStyle(
                  fontFamily: 'monospace',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.red[900],
          ),
        ),
        ListTile(
          leading: Icon(Icons.home, color: Colors.red[900]),
          title: Text(
            'Home',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
        ListTile(
          leading: Icon(Icons.auto_stories, color: Colors.red[900]),
          title: Text(
            'Ver Artigos',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/healthbot');
          },
        ),
        ListTile(
          leading: Icon(Icons.search, color: Colors.red[900]),
          title: Text(
            'Buscar Artigo',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/search');
          },
        ),
        ListTile(
          leading: Icon(Icons.balcony, color: Colors.red[900]),
          title: Text(
            'Health Bot',
            style: TextStyle(
              fontFamily: 'monospace',
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/healthbot');
          },
        ),
      ],
    ),
  );
}
