import 'package:adela/charts/week_charts/bar_chart.dart';
import 'package:adela/models/mauzo_week.dart';
import 'package:flutter/material.dart';

class wiki extends StatefulWidget {
  const wiki({Key? key}) : super(key: key);

  @override
  _wikiState createState() => _wikiState();
}

class _wikiState extends State<wiki> {
  Future<void> _refresh() {
    return Future.delayed(Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      edgeOffset: 0,
      color: Colors.black,
      backgroundColor: Colors.purple,
      displacement: 20.0,
      onRefresh: _refresh,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(children: [
          for (final mau in mauzo)
            BarChartSample2(
              wiki: mau.wiki,
            ),
        ]),
      ),
    );
  }
}
