import 'package:flutter/material.dart';

class Total extends StatefulWidget {
  Total({Key key}) : super(key: key);

  @override
  _TotalState createState() => _TotalState();
}

class _TotalState extends State<Total> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Total",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
