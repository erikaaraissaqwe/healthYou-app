import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import '../models/appdata.dart';

class PreloadPage extends StatefulWidget {
  @override
  _PreloadPage createState() => _PreloadPage();
}

class _PreloadPage extends State<PreloadPage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    requestInfo();
  }

  bool loading = true;

  void requestInfo() async {
    
    setState(() {
      loading = true;
    });

    bool request = await Provider.of<AppData>(context).requestData();

    if (request) {
      Navigator.pushReplacementNamed(context, '/home');
    } else{
      setState(() {
        loading = false;
      });
    } 
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.PNG',
              width: 200,
            ),
            loading
                ? Container(
                    margin: EdgeInsets.all(30),
                    child: Text('Carregando informações...',
                        style: TextStyle(
                          fontFamily: 'cursive', 
                          fontSize: 24, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                  )
                : Container(),
            loading
                ? CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(Colors.red),
                  )
                : Container(),
            !loading
                ? Container(
                    margin: EdgeInsets.all(30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red[900], elevation: 20),
                      child: Text(
                        'Tentar novamente', 
                        style: TextStyle(
                          fontFamily: 'cursive', 
                          fontSize: 24, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      onPressed: () {},
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
