import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Settings za application",
          style: TextStyle(
              color: Colors.orange[200],
              fontFamily: 'Tangerine',
              fontSize: 35.0),
        ),
      ),
    );
  }
}
