import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'models/nguo.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: const <Widget>[
            Icon(Icons.shopping_cart_outlined, size: 30),
            Icon(Icons.add_shopping_cart, size: 30),
            Icon(Icons.bar_chart, size: 30),
            Icon(Icons.perm_identity, size: 30),
            Icon(Icons.settings_applications, size: 30),
          ],
          color: Colors.purple,
          buttonBackgroundColor: Colors.purple,
          backgroundColor: Colors.black,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
              print(index);
            });
          },
          letIndexChange: (index) => true,
        ),
        body: ListView.builder(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            shrinkWrap: true,
            itemCount: bidhaa.length,
            itemBuilder: (itemBuilder, int index) {
              return nguo(index);
            }));
  }
}

Widget nguo(int index) {
  return Container(
    // decoration: BoxDecoration(),
    color: Colors.black,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              height: 400,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  bidhaa[index].picha,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.only(top: 5.0, left: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.purple[500],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Tsh ${bidhaa[index].kuuzwa}',
                    style: const TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 15.0,
                right: 8.0,
                child: FloatingActionButton(
                  backgroundColor: Colors.purple,
                  onPressed: () {},
                  child: const Text(
                    'Uza',
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.black),
                  ),
                ))
          ],
        ),
      ],
    ),
  );
}
