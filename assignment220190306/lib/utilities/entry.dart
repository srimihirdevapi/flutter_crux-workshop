import 'package:assignment220190306/constants.dart';
import 'package:flutter/material.dart';

class Entry extends StatelessWidget {
  final void Function(String)? onSubmit;
  final String header;
  final String hintText;
  final TextEditingController textController;
  final String? errorText;
  final bool toObscure;
  Entry({
    required this.onSubmit,
    required this.header,
    required this.hintText,
    required this.textController,
    this.errorText,
    required this.toObscure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(this.header, style: kEntryTextStyle),
          SizedBox(height: 10),
          TextField(
            controller: textController,
            //onSubmitted: this.onSubmit,
            onChanged: this.onSubmit,
            obscureText: toObscure,
            obscuringCharacter: '*',
            decoration: InputDecoration(
              fillColor: kEntryFillColor,
              filled: true,
              hintText: this.hintText,
              hintStyle: kHintTextStyle,
              border: OutlineInputBorder(),
              errorText: this.errorText,
            ),
          ),
        ],
      ),
    );
  }
}


// class Entry extends StatefulWidget {
//   final void Function(String)? onSubmit;
//   final String header;
//   final String hintText;
//   // String? errorText;
//   // final String errorText;
//   Entry({this.onSubmit, required this.header, required this.hintText});

//   @override
//   _EntryState createState() => _EntryState();
// }

// class _EntryState extends State<Entry> {
//   // void Function(String)? onSubmit;
//   // String header;
//   // String hintText;
//   // String? errorText;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(widget.header, style: kEntryTextStyle),
//           SizedBox(height: 10),
//           TextField(
//             onSubmitted: widget.onSubmit,
//             decoration: InputDecoration(
//               fillColor: kEntryFillColor,
//               filled: true,
//               //labelText: hintText,
//               hintText: widget.hintText,
//               hintStyle: TextStyle(color: kHintColor),
//               border: OutlineInputBorder(),
//               errorText: 'This field cannot be empty',
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }