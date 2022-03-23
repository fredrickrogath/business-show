import 'package:adela/tabs/mauzo.dart';
import 'package:adela/tabs/ongeza_bidhaa.dart';
import 'package:adela/tabs/settings.dart';
import 'package:adela/tabs/ushauri.dart';
import 'package:adela/tabs/uza.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _tabItems = [
    const uza(),
    const ongezaBidhaa(),
    const mauzo(),
    const ushauri(),
    const settings()
  ];
  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.shopping_cart_outlined,
            size: 25,
            color: _activePage == 0 ? Colors.orange[200] : Colors.black,
          ),
          Icon(
            Icons.add_shopping_cart,
            size: 25,
            color: _activePage == 1 ? Colors.orange[200] : Colors.black,
          ),
          Icon(
            Icons.bar_chart,
            size: 25,
            color: _activePage == 2 ? Colors.orange[200] : Colors.black,
          ),
          Icon(
            Icons.perm_identity,
            size: 25,
            color: _activePage == 3 ? Colors.orange[200] : Colors.black,
          ),
          Icon(
            Icons.settings_applications,
            size: 25,
            color: _activePage == 4 ? Colors.orange[200] : Colors.black,
          ),
        ],
        color: Colors.purple,
        buttonBackgroundColor: Colors.purple,
        backgroundColor: Colors.black,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _activePage = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: _tabItems[_activePage],
    );
  }
}
