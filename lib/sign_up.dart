import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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
                              placeholder: "Enter first name",
                            ),
                            prefix: Text("Frist Name"),
                          ),
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
                              placeholder: "Enter last name",
                            ),
                            prefix: Text("Last Name"),
                          ),
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
                          CupertinoFormRow(
                            child: CupertinoTextFormFieldRow(
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
                                  onPressed: () {},
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