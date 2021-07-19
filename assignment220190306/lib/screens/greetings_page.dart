import 'package:flutter/material.dart';

import 'package:assignment220190306/constants.dart';

class GreetingsPage extends StatelessWidget {
  final String idNumber;
  const GreetingsPage({Key? key, required this.idNumber}) : super(key: key);

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
                Text(idNumber, style: kGreetingIDTextStyle),
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
