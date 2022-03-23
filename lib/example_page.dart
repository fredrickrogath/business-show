import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  double spaceBetween = 10.0;
  final _duration = Duration(milliseconds: 200);

  _onStartScroll(ScrollMetrics metrics) {
    // if you need to do something at the start
  }

  _onUpdateScroll(ScrollMetrics metrics) {
    // do your magic here to change the value
    if (spaceBetween == 30.0) return;
    spaceBetween = 30.0;
    setState(() {});
  }

  _onEndScroll(ScrollMetrics metrics) {
    // do your magic here to return the value to normal
    spaceBetween = 10.0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollStartNotification) {
          _onStartScroll(scrollNotification.metrics);
        } else if (scrollNotification is ScrollUpdateNotification) {
          _onUpdateScroll(scrollNotification.metrics);
        } else if (scrollNotification is ScrollEndNotification) {
          _onEndScroll(scrollNotification.metrics);
        }
        return true; // see docs
      },
      child: ListView(
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.blue),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.red),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.blue),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.red),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.blue),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.red),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.blue),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.red),
          AnimatedContainer(duration: _duration, height: spaceBetween),
          Container(height: 100, width: 100, color: Colors.blue),
          AnimatedContainer(duration: _duration, height: spaceBetween),
        ],
      ),
    );
  }
}
