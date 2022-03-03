import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:myapp/sign_up.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                          placeholder: "Enter phone number",
                        ),
                        prefix: Text("Phone number"),
                      ),
                      CupertinoFormRow(
                        child: CupertinoTextFormFieldRow(
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
                                onPressed: () {},
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
                                onPressed: () {
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