import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void _openUrl(String url, String fallbackUrl) async {
 
  try {
    bool launched =
        await launch(url, forceSafariVC: false, forceWebView: false);
    if (!launched) {
      await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
      }
  } catch (e) {
    await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
  }
}

Widget customDrawer({required BuildContext pageContext}) {
  
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
            Navigator.pushReplacementNamed(pageContext, '/home');
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
            Navigator.pushReplacementNamed(pageContext, '/articles');
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
            _openUrl('https://m.me/healthBot145', 'https://www.messenger.com/t/104990148372173/?messaging_source=source%3Apages%3Amessage_shortlink');
          },
        ),
      ],
    ),
  );
}
