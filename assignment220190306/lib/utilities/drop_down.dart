import 'package:assignment220190306/constants.dart';
import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  final List<DropdownMenuItem<String>>? items;
  final void Function(String?)? onChanged;
  final String header;
  final String? dropDownValue;

  DropDown({
    this.items,
    this.onChanged,
    required this.header,
    required this.dropDownValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(header, style: kEntryTextStyle),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: kEntryFillColor,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: dropDownValue,
                items: items,
                isExpanded: true,
                dropdownColor: kEntryFillColor,
                onChanged: onChanged,
                style: kDropDownTextStyle,
                iconSize: 30,
                icon: Icon(Icons.expand_more),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
