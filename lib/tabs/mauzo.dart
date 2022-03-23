import 'package:adela/tabs/mauzo_tab/mwaka.dart';
import 'package:adela/tabs/mauzo_tab/mwezi.dart';
import 'package:adela/tabs/mauzo_tab/wiki.dart';
import 'package:flutter/material.dart';

class mauzo extends StatefulWidget {
  const mauzo({Key? key}) : super(key: key);

  @override
  mauzoState createState() => mauzoState();
}

class mauzoState extends State<mauzo> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: TabBar(
                    // indicatorColor: Colors.grey,
                    labelColor: Colors.orange[200],
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Colors.black,
                    labelPadding: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    controller: _tabController,
                    tabs: const [
                      Text(
                        "Wiki",
                        style:
                            TextStyle(fontFamily: 'Tangerine', fontSize: 35.0),
                      ),
                      Text(
                        "Mwezi",
                        style:
                            TextStyle(fontFamily: 'Tangerine', fontSize: 35.0),
                      ),
                      Text(
                        "Mwaka",
                        style:
                            TextStyle(fontFamily: 'Tangerine', fontSize: 35.0),
                      ),
                    ]),
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            wiki(),
            mwezi(),
            mwaka(),
          ],
        ),
      ),
    );
  }

  // @override
  // void dispose() {
  //   _tabController.dispose();
  //   super.dispose();
  // }
}
