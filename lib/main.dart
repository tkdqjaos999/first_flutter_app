import 'package:flutter/material.dart';
import 'cupertino_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HelloPage('Hello World')
    );
  }
}

class HelloPage extends StatefulWidget {
  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  String _message = 'Hello World';
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton:FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: _changeMessage),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,// 세로 정렬
              crossAxisAlignment: CrossAxisAlignment.center, // 가로 정렬
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(_message, style: TextStyle(fontSize: 30),),
                Text('$_counter', style: TextStyle(fontSize: 30),),
                Icon(Icons.add_location, size: 48,),
                RaisedButton(
                    child: Text('화면 이동'),
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CupertinoPage())
                      );
                    }
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Icon(Icons.ac_unit, size: 48,),
                    Icon(Icons.account_balance, size: 48,),
                    Icon(Icons.adb, size: 48,),
                  ],
                )
              ],
            )));
  }

  void _changeMessage() {
    setState(() {
      _message = 'hello world2';
      _counter++;
    });
  }
}

