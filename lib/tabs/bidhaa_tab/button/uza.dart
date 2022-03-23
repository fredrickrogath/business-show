import 'package:flutter/material.dart';

class uza extends StatefulWidget {
  const uza({Key? key}) : super(key: key);

  @override
  _uzaState createState() => _uzaState();
}

class _uzaState extends State<uza> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: const Text(
          'Uza',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontFamily: 'Tangerine',
              fontSize: 25.0),
        ),
      ),
      FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: const Text(
          'Uza',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontFamily: 'Tangerine',
              fontSize: 25.0),
        ),
      ),
      FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: const Text(
          'Uza',
          style: TextStyle(
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontFamily: 'Tangerine',
              fontSize: 25.0),
        ),
      )
    ]);
  }
}

// class FlowMenuDelegate extends FlowDelegate {
//   FlowMenuDelegate(this.animation) : super(repaint: animation);
//   final Animation<double> animation;
//   @override
//   void paintChildren(FlowPaintingContext context) {
//     for (int i = 0; i < context.childCount; i++) {
//       var offset = i * animation.value * 50;
//       context.paintChild(
//         i,
//         transform: Matrix4.translationValues(--offset, --offset, 0),
//       );
//     }
//   }
//
//   @override
//   bool shouldRepaint(FlowMenuDelegate oldDelegate) {
//     // return myAnimation != oldDelegate.myAnimation;
//     return false;
//   }
// }
