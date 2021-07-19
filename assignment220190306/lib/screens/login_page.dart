import 'package:flutter/material.dart';

import 'package:assignment220190306/constants.dart';

import 'package:assignment220190306/screens/register_page.dart';
import 'package:assignment220190306/screens/greetings_page.dart';

import 'package:assignment220190306/utilities/entry.dart';
import 'package:assignment220190306/utilities/bottom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String idNumber = '';
  String password = '';
  final TextEditingController controllerID = TextEditingController();
  final TextEditingController controllerPWD = TextEditingController();
  // ignore: avoid_init_to_null
  String? errorID = null;
  // ignore: avoid_init_to_null
  String? errorPWD = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text('CRUX FLUTTER', style: kHeaderTextStyle),
                Text('SUMMER GROUP', style: kHeaderTextStyle),

                SizedBox(height: 70),

                // ID Number
                Entry(
                  textController: controllerID,
                  header: 'ID Number',
                  hintText: kHintText_ID,
                  errorText: errorID,
                  toObscure: false,
                  onSubmit: (String value) {
                    setState(() {
                      idNumber = value;
                      errorID = controllerID.text.isEmpty ? kErrorText : null;
                      print(
                          "LoginPage, ID Number = $idNumber, controller.text = ${controllerID.text}");
                    });
                  },
                ),

                //SizedBox(height: 15),

                // Password
                Entry(
                  textController: controllerPWD,
                  header: 'Password',
                  hintText: kHintText_pwd,
                  errorText: errorPWD,
                  toObscure: true,
                  onSubmit: (String value) {
                    setState(() {
                      password = value;
                      errorPWD = controllerPWD.text.isEmpty ? kErrorText : null;
                      print(
                          "LoginPage, password = $password, controller.text = ${controllerPWD.text}");
                    });
                  },
                ),

                SizedBox(height: 28),

                // Login Button
                BottomButton(
                  text: 'LOG IN',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GreetingsPage(idNumber: idNumber),
                      ),
                    );
                  },
                ),

                SizedBox(height: 15),

                // Forgot Password
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child:
                        Text('Forgot Password ?', style: kRedirectingTextStyle),
                  ),
                ),

                SizedBox(height: 30),

                // Register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account", style: kNormalTextStyle),
                    TextButton(
                      child: Text("Register", style: kRedirectingTextStyle),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class LoginPage extends StatelessWidget {
//   late final String ID_Number;
//   late final String password;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Title
//               Center(child: Text('CRUX FLUTTER', style: kHeaderTextStyle)),
//               Center(child: Text('SUMMER GROUP', style: kHeaderTextStyle)),
//               SizedBox(height: 70),
//               // ID Number
//               Entry(
//                 header: 'ID Number',
//                 hintText: 'Please enter your BITS ID Number',
//                 onSubmit: (String value) {
//                   ID_Number = value;
//                   print(ID_Number);
//                 },
//               ),
//               SizedBox(height: 15),
//               // Password
//               Entry(
//                 header: 'Password',
//                 hintText: 'Please enter your Password',
//                 onSubmit: (String value) {
//                   password = value;
//                   print(password);
//                 },
//               ),

//               SizedBox(height: 28),
//               // Login Button
//               BottomButton(text: 'LOG IN'),

//               // Forgot Password
//               Center(child: Text('Forgot Password ?', style: kHighlightedText)),

//               SizedBox(height: 30),
//               // Register
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Don't have an account",
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500),
//                   ),
//                   // SizedBox(width: 5),
//                   //Text("Register", style: kHighlightedText),
//                   TextButton(
//                     onPressed: () {
//                       // setState(() {});
//                     },
//                     child: Text("Register", style: kHighlightedText),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
