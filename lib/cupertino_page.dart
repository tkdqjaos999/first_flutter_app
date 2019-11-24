import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  bool _switch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('cupertino UI'),
      ),
      body: Column(
        children: <Widget>[
          CupertinoButton(
              child: Text('cupertino button'),
              onPressed: null
          ),
          CupertinoSwitch(
              value: _switch,
              onChanged: (bool value){
                setState(() {
                  _switch = value;
                });
              },
          )
        ],
      ),
    );
  }
}
