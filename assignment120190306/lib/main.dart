import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const Color kBackGroundColor = Color(0xFFECF0F3);
const Color kTileColor = Color(0xFFC4C4C4);
const EdgeInsets kTileMargin = EdgeInsets.all(15);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: kBackGroundColor,
          child: Column(
            children: [
              // 1
              Expanded(
                  child: Container(color: kTileColor, margin: kTileMargin)),
              // 2
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child:
                            Container(color: kTileColor, margin: kTileMargin)),
                    Expanded(
                        child:
                            Container(color: kTileColor, margin: kTileMargin)),
                    Expanded(
                        child:
                            Container(color: kTileColor, margin: kTileMargin)),
                  ],
                ),
              ),
              // 3
              Expanded(
                  child: Container(color: kTileColor, margin: kTileMargin)),
              // 4
              Expanded(
                  child: Container(color: kTileColor, margin: kTileMargin)),
              // 5
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                                  color: kTileColor, margin: kTileMargin)),
                          Expanded(
                              child: Container(
                                  color: kTileColor, margin: kTileMargin)),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(color: kTileColor, margin: kTileMargin),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
