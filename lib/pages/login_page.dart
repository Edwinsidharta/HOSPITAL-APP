import 'dart:html';

import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/components/my_text_field.dart';
import 'package:food/pages/register_page.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Controller Attribute
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  var isRememberMe = false;

  //Function
  void _loginUser() {
    print(usernameController.text +
        "\n" +
        passwordController.text +
        "\n" +
        isRememberMe.toString());
  }

  void _onTapIsRememberMe() {
    setState(() {
      if (isRememberMe)
        isRememberMe = false;
      else
        isRememberMe = true;
    });
  }

  void _onTapChangeRegisterPage(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => (const RegisterPage())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Wrap Builder to provide context for Navigator to change Page
      home: Builder(builder: (context) {
        return Scaffold(
            backgroundColor: Colors.grey[300],
            body: SafeArea(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 50), //sized box used for spacing

                    //Logo
                    const Icon(
                      Icons.lock,
                      size: 100,
                    ),

                    const SizedBox(height: 50), //sized box used for spacing

                    //Text welcome back
                    Text(
                      "Welcome back you've been missed!",
                      style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    ),

                    const SizedBox(height: 25), //sized box used for spacing

                    //Input text username
                    MyTextField(
                        controller: usernameController,
                        hintText: 'Username',
                        obsecureText: false),

                    const SizedBox(height: 10), //sized box used for spacing

                    //Input text password
                    MyTextField(
                        controller: passwordController,
                        hintText: 'Password',
                        obsecureText: true),

                    const SizedBox(height: 10), //sized box used for spacing

                    //Forget Password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: _onTapIsRememberMe,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  value: isRememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      isRememberMe = value!;
                                    });
                                  },
                                ),
                                Text(
                                  "Remember Me",
                                  style: TextStyle(
                                      color: Colors.blue[300], fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "Forget Password?",
                            style: TextStyle(
                                color: Colors.blue[300], fontSize: 16),
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 25), //sized box used for spacing

                    //Button Login
                    MyButton(
                      onTap: _loginUser,
                      text: "Log In",
                    ),

                    const SizedBox(height: 20), //sized box used for spacing

                    //Button Register
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[700],
                          )),
                          GestureDetector(
                            onTap: () => _onTapChangeRegisterPage(context),
                            child: Row(
                              children: [
                                Text(
                                  "Didn't Have Account? ",
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 16),
                                ),
                                Text(
                                  "Register Now",
                                  style: TextStyle(
                                      color: Colors.blue[300], fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[700],
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
      }),
    );
  }
}
