import 'package:biu/pages/Debt.dart';
import 'package:biu/pages/daily.dart';
import 'package:biu/pages/investment.dart';
import 'package:biu/pages/total.dart';
import 'package:flutter/material.dart';

import 'components/bottom_nav_bar_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStackPage(title: 'Biu'),
    );
  }
}

class MyStackPage extends StatefulWidget {
  MyStackPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyStackPageState createState() => _MyStackPageState();
}

class _MyStackPageState extends State<MyStackPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          Daily(),
          Debt(),
          Investment(),
          Total(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomItem(Icon(Icons.people), "日常"),
          BottomItem(Icon(Icons.people), "投资"),
          BottomItem(Icon(Icons.people), "负债"),
          BottomItem(Icon(Icons.people), "总资产"),
        ],
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
      ),
    );
  }
}
