import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'alert_dialog.dart';



class SignUp extends StatelessWidget {
  TextEditingController _fNameTEC = new TextEditingController();
  TextEditingController _lNameTEC = new TextEditingController();
  TextEditingController _phoneTEC = new TextEditingController();
  TextEditingController _passwordTEC = new TextEditingController();
  TextEditingController _confirmPassTEC = new TextEditingController();

  void displayDialog(context, message, [redirect = false]) {
    showDialog(
      context: context,
      builder: (BuildContext context) => new CupertinoAlertDialog(
        title: new Text("Alert"),
        content: new Text(message),
      ),
    ).then((val) {
      if (redirect == true) {
        Navigator.of(context).pushNamed("login");
      }
    });
  }

  Future<http.Response> register(context, String firstName, String lastName,
      String phoneNumber, String password, String confirmPassword) async {

    var response = await http.post(
      Uri.parse('http://139.180.210.125:8080/users/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json'
      },
      body: jsonEncode(<String, String>{
        'first_name': firstName,
        'last_name' : lastName,
        'phone_number': phoneNumber,
        'password': password,
        'password_confirmation': confirmPassword
      }),
    );



    if (response.statusCode == 422) {
      displayDialog(context, jsonDecode(response.body)['message']);
    } else {
      displayDialog(context, "Thành công rồi bạn nhé!", true);

    }
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
          onPressed: () => Navigator.of(context).pushNamed("login"),
          )
        ),
          child: new SingleChildScrollView(
              child: Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 100, 0, 20),
                        child: Column(
                          children: [
                            Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.none
                                )
                            ),
                            Text(
                                "Create your account",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    decoration: TextDecoration.none
                                )
                            ),
                          ],
                        )
                    ),
                    CupertinoFormSection(
                        children: [
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              controller: _fNameTEC,
                              placeholder: "Enter first name",
                            ),
                            prefix: Text("Frist Name"),
                          ),
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              controller: _lNameTEC,
                              placeholder: "Enter last name",
                            ),
                            prefix: Text("Last Name"),
                          ),
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter phone number",
                              controller: _phoneTEC,
                            ),
                            prefix: Text("Phone number"),
                          ),
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              controller: _passwordTEC,
                              placeholder: "Enter password",
                              obscureText: true,
                            ),
                            prefix: Text("Password"),
                          ),
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              controller: _confirmPassTEC,
                              placeholder: "Enter confirm password",
                              obscureText: true,
                            ),
                            prefix: Text("Confirm password"),
                          ),

                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                            child: Column(
                              children: [
                                const SizedBox(height: 30),
                                CupertinoButton.filled(
                                  onPressed: () async {
                                    var _fname = _fNameTEC.text;
                                    var _lname = _lNameTEC.text;
                                    var _phone = _phoneTEC.text;
                                    var _password = _passwordTEC.text;
                                    var _confirmPassword = _confirmPassTEC.text;

                                    register(context, _fname, _lname, _phone, _password, _confirmPassword);
                                  },
                                  child: const Text('Sign Up'),
                                ),
                              ],
                            )
                          )

                        ]
                    )
                  ]
              )
          ),
    );
  }
}