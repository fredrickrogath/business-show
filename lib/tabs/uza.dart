import 'package:adela/tabs/bidhaa_tab/hereni_cheni_tab.dart';
import 'package:adela/tabs/bidhaa_tab/mikoba_tab.dart';
import 'package:adela/tabs/bidhaa_tab/nguo_tab.dart';
import 'package:flutter/material.dart';

class uza extends StatefulWidget {
  const uza({Key? key}) : super(key: key);

  @override
  uzaState createState() => uzaState();
}

class uzaState extends State<uza> with SingleTickerProviderStateMixin {
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
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[];
        },
        body: TabBarView(
          controller: _tabController,
          children: const [
            NguoParallax(),
            MikobaParallax(),
            HereniCheniParallax(),
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
