import 'package:flutter/material.dart';

class Daily extends StatefulWidget {
  Daily({Key key}) : super(key: key);

  @override
  _DailyState createState() => _DailyState();
}

class _DailyState extends State<Daily> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Daily",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
