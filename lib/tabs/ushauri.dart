import 'package:flutter/material.dart';

class ushauri extends StatefulWidget {
  const ushauri({Key? key}) : super(key: key);

  @override
  _ushauriState createState() => _ushauriState();
}

class _ushauriState extends State<ushauri> with SingleTickerProviderStateMixin {
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
      body: Center(
        child: Text(
          "Ushauri juu ya mauzo",
          style: TextStyle(
              color: Colors.orange[200],
              fontFamily: 'Tangerine',
              fontSize: 35.0),
        ),
      ),
    );
  }
}
