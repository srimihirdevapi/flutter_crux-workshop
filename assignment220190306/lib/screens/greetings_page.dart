import 'package:flutter/material.dart';

import 'package:assignment220190306/constants.dart';

class GreetingsPage extends StatelessWidget {
  final String ID_Number;
  const GreetingsPage({Key? key, required this.ID_Number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 00),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Title
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text('CRUX FLUTTER', style: kHeaderTextStyle),
                      Text('SUMMER GROUP', style: kHeaderTextStyle),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text('welcomes you', style: kNormalTextStyle),
                Text(ID_Number, style: kGreetingIDTextStyle),
                Text('Have great journey ahead', style: kNormalTextStyle),
                SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
