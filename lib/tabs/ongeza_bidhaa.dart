import 'package:flutter/material.dart';

class ongezaBidhaa extends StatefulWidget {
  const ongezaBidhaa({Key? key}) : super(key: key);

  @override
  ongezaBidhaaState createState() => ongezaBidhaaState();
}

class ongezaBidhaaState extends State<ongezaBidhaa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Ongeza bidhaa",
          style: TextStyle(
              color: Colors.orange[200],
              fontFamily: 'Tangerine',
              fontSize: 35.0),
        ),
      ),
    );
  }
}
