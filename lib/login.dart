import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:myapp/sign_up.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          leading: CupertinoNavigationBarBackButton(
            onPressed: () => Navigator.of(context).pop(),
          )
      ),
      child: new SingleChildScrollView(
          child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(0, 100, 0, 20),
                    child: Text(
                        "Welcome DRIVOR",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none
                        )
                    ),
                ),
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