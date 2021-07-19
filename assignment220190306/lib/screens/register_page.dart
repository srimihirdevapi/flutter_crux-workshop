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
  final TextEditingController controller_ID = TextEditingController();
  final TextEditingController controller_pwd = TextEditingController();
  String ID_Number = '';
  String password = '';
  String? error_ID = null;
  String? error_pwd = null;
  String? dropDown_value = '2019';
  bool recieve_updates = false;
  Response? is_excited = Response.yes;

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
                    ID_Number = value;
                    error_ID = controller_ID.text.isEmpty ? kErrorText : null;
                    print(
                        "RegisterPage, ID Number = ${ID_Number}, controller.text = ${controller_ID.text}");
                  });
                },
                header: 'ID Number',
                hintText: kHintText_ID,
                text_controller: controller_ID,
              ),

              // Password
              Entry(
                onSubmit: (String value) {
                  setState(() {
                    password = value;
                    error_pwd = controller_pwd.text.isEmpty ? kErrorText : null;
                    print(
                        "RegisterPage, password = ${password}, controller.text = ${controller_pwd.text}");
                  });
                },
                header: 'Password',
                hintText: kHintText_pwd,
                text_controller: controller_pwd,
              ),

              // Batch
              DropDown(
                dropDownValue: dropDown_value,
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
                    dropDown_value = value;
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
                      value: recieve_updates,
                      onChanged: (bool status) {
                        setState(() {
                          recieve_updates = status;
                          print("Register, is_excited = ${recieve_updates}");
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
                          groupValue: is_excited,
                          onChanged: (Response? value) {
                            setState(() {
                              is_excited = value;
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
                          groupValue: is_excited,
                          onChanged: (Response? value) {
                            setState(() {
                              is_excited = value;
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
                      builder: (context) => GreetingsPage(ID_Number: ID_Number),
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
