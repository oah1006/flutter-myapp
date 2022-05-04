import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:http/http.dart' as http;

import 'package:myapp/sign_up.dart';

class Login extends StatelessWidget {

  TextEditingController _phoneTEC = new TextEditingController();
  TextEditingController _passwordTEC = new TextEditingController();

  void displayDialog(context, message, [redirect = false]) {
    showDialog(
      context: context,
      builder: (BuildContext context) => new CupertinoAlertDialog(
        title: new Text("Alert"),
        content: new Text(message),
      ),
    );
  }

  Future<http.Response> login(context, String phoneNumber, String password) async {
    var response = await http.post(
      Uri.parse('http://45.76.156.50/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json'
      },
      body: jsonEncode(<String, String>{
        'phone_number': phoneNumber,
        'password': password,
      }),
    );


    if (response.statusCode == 422 || response.statusCode == 401) {
      displayDialog(context, jsonDecode(response.body)['message']);
    } else {
      Navigator.of(context).pushNamed("home");
      var box = GetStorage();
      box.write('user', jsonDecode(response.body)['user']);
      box.write('token', jsonDecode(response.body)['token']);
    }
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // navigationBar: CupertinoNavigationBar(
      //     leading: CupertinoNavigationBarBackButton(
      //       onPressed: () => Navigator.of(context).pop(),
      //     )
      // ),
      child: new SingleChildScrollView(
          child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: Column(
                    children: [
                      Text(
                        "Welcome DRIVOR",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none
                        )
                      ),
                      Text(
                        "Login to continue using DRIVOR",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none
                        )
                      )
                    ],
                  )
                ),

                // Container(
                //     padding: EdgeInsets.fromLTRB(0, 100, 0, 20),
                //     child: Text(
                //         "Welcome DRIVOR",
                //         style: TextStyle(
                //             fontSize: 30,
                //             color: Colors.lightBlue,
                //             fontWeight: FontWeight.w600,
                //             decoration: TextDecoration.none
                //         )
                //     ),
                // ),
                CupertinoFormSection(
                    children: [
                      CupertinoFormRow(
                        child: CupertinoTextFormFieldRow(
                          controller: _phoneTEC,
                          placeholder: "Enter phone number",
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
                      Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: Column(
                            children: [
                              const SizedBox(height: 30),
                              CupertinoButton.filled(
                                minSize: 22.0,
                                onPressed: () {
                                  var _phone = _phoneTEC.text;
                                  var _password = _passwordTEC.text;

                                  login(context, _phone, _password);
                                },
                                child: const Text('Sign In'),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                  child: Text(
                                      'Nếu bạn chưa có tài khoản?',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          decoration: TextDecoration.none
                                      )
                                  )
                              ),
                              const SizedBox(height: 30),
                              CupertinoButton(
                                onPressed: () async {
                                  Navigator.of(context).pushNamed("signup");
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