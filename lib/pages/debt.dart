import 'package:flutter/material.dart';

class Debt extends StatefulWidget {
  Debt({Key key}) : super(key: key);

  @override
  _DebtState createState() => _DebtState();
}

class _DebtState extends State<Debt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Debt",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
