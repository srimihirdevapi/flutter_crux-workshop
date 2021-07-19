import 'package:assignment220190306/constants.dart';
import 'package:flutter/material.dart';

// import 'package:assignment220190306/screens/login_page.dart';
import 'package:assignment220190306/screens/greetings_page.dart';

import 'package:assignment220190306/utilities/entry.dart';
import 'package:assignment220190306/utilities/drop_down.dart';
import 'package:assignment220190306/utilities/bottom_button.dart';

enum Response { yes, no }

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController controllerID = TextEditingController();
  final TextEditingController controllerPWD = TextEditingController();
  String idNumber = '';
  String password = '';
  // ignore: avoid_init_to_null
  String? errorID = null;
  // ignore: avoid_init_to_null
  String? errorPWD = null;
  String? dropDownValue = '2019';
  bool recieveUpdates = false;
  Response? isExcited = Response.yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'CRUX FLUTTER SUMMER GROUP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ID Number
              Entry(
                onSubmit: (String value) {
                  setState(() {
                    idNumber = value;
                    errorID = controllerID.text.isEmpty ? kErrorText : null;
                    print(
                        "RegisterPage, ID Number = $idNumber, controller.text = ${controllerID.text}");
                  });
                },
                header: 'ID Number',
                hintText: kHintText_ID,
                textController: controllerID,
                errorText: errorID,
                toObscure: false,
              ),

              // Password
              Entry(
                onSubmit: (String value) {
                  setState(() {
                    password = value;
                    errorPWD = controllerPWD.text.isEmpty ? kErrorText : null;
                    print(
                        "RegisterPage, password = $password, controller.text = ${controllerPWD.text}");
                  });
                },
                header: 'Password',
                hintText: kHintText_pwd,
                textController: controllerPWD,
                errorText: errorPWD,
                toObscure: true,
              ),

              // Batch
              DropDown(
                dropDownValue: dropDownValue,
                header: 'Batch',
                items: <String>['2020', '2019', '2018', '2017']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    dropDownValue = value;
                  });
                },
              ),

              // Switch
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recieve Regular Updates', style: kEntryTextStyle),
                  Transform.scale(
                    scale: 1.2,
                    child: Switch(
                      value: recieveUpdates,
                      onChanged: (bool status) {
                        setState(() {
                          recieveUpdates = status;
                          print("Register, is_excited = $recieveUpdates");
                        });
                      },
                      activeColor: kPrimaryColor,
                      inactiveThumbColor: kPrimaryColor,
                      activeTrackColor: kSwitchActiveTrackColor,
                    ),
                  )
                ],
              ),

              // Radio
              Text('Are you excited for this !!', style: kEntryTextStyle),
              Row(
                //mainAxisSize: MainAxisSize.min,
                children: [
                  // Yes
                  Expanded(
                    child: ListTile(
                      title: const Text('Yes', style: kEntryTextStyle),
                      leading: Transform.scale(
                        scale: 1.3,
                        child: Radio<Response>(
                          value: Response.yes,
                          groupValue: isExcited,
                          onChanged: (Response? value) {
                            setState(() {
                              isExcited = value;
                            });
                          },
                          activeColor: kRadioColor,
                        ),
                      ),
                    ),
                  ),
                  //No
                  Expanded(
                    child: ListTile(
                      title: const Text('No', style: kEntryTextStyle),
                      leading: Transform.scale(
                        scale: 1.3,
                        child: Radio<Response>(
                          value: Response.no,
                          groupValue: isExcited,
                          onChanged: (Response? value) {
                            setState(() {
                              isExcited = value;
                            });
                          },
                          activeColor: kRadioColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Regieter button
              BottomButton(
                text: 'REGISTER',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GreetingsPage(idNumber: idNumber),
                    ),
                  );
                },
              ),

              // Back to Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account", style: kNormalTextStyle),
                  TextButton(
                    child: Text("Login", style: kRedirectingTextStyle),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
