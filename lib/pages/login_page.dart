import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/components/my_text_field.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Controller Text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //Controller Button
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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

                  //forget password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget Password?",
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 16),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(height: 25), //sized box used for spacing

                  MyButton(
                    onTap: signUserIn,
                    text: "Log In",
                  ),

                  const SizedBox(height: 10),

                  MyButton(
                    onTap: signUserIn,
                    text: "Register",
                  ), //sized box used for spacing
                ],
              ),
            ),
          )),
    );
  }
}
