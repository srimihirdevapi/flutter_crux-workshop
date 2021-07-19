import 'package:assignment220190306/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  BottomButton({required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0),
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: kBottomButtonDecoration,
        child: Center(child: Text(text, style: kBottomButtonTextStyle)),
        width: double.infinity,
      ),
    );
  }
}
