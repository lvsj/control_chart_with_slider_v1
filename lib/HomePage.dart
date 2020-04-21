import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:magic_8_ball/Slider.dart';
import 'Chart.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Chart(),
            ),
            Expanded(
              child: NewSlider(value: 0.8,onChanged: (value){
              },),
            )
          ],
        ),
      ),
    );
  }
}