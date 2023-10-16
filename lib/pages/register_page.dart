import 'dart:html';

import 'package:flutter/material.dart';
import 'package:food/components/my_button.dart';
import 'package:food/components/my_text_field.dart';
import 'package:food/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //Controller Attribute
  final nameController = TextEditingController();
  final doctorLicenseController = TextEditingController();
  final birthDateController = TextEditingController();
  final addressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  //Function
  void _registerUser() {
    print(nameController.text +
        "\n" +
        doctorLicenseController.text +
        "\n" +
        birthDateController.text +
        "\n" +
        addressController.text +
        "\n" +
        phoneNumberController.text +
        "\n" +
        passwordController.text +
        "\n");
  }

  void _onTapChangeLoginPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => (const LoginPage())));
  }

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

                  //Text welcome back
                  Text(
                    "REGISTER DOCTOR PAGE",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 50), //sized box used for spacing

                  //Input text username
                  MyTextField(
                      controller: nameController,
                      hintText: 'Nama',
                      obsecureText: false),

                  const SizedBox(height: 10), //sized box used for spacing

                  //Input text password
                  MyTextField(
                      controller: doctorLicenseController,
                      hintText: 'Surat Ijin Praktek',
                      obsecureText: true),

                  const SizedBox(height: 10), //sized box used for spacing

                  //Input text password
                  MyTextField(
                      controller: birthDateController,
                      hintText: 'Tanggal Lahir',
                      obsecureText: true),

                  const SizedBox(height: 10), //sized box used for spacing

                  //Input text password
                  MyTextField(
                      controller: addressController,
                      hintText: 'Alamat',
                      obsecureText: true),

                  const SizedBox(height: 10), //sized box used for spacing

                  //Input text password
                  MyTextField(
                      controller: phoneNumberController,
                      hintText: 'Nomor Telepon',
                      obsecureText: true),

                  const SizedBox(height: 10), //sized box used for spacing

                  //Input text password
                  MyTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      obsecureText: true),

                  const SizedBox(height: 25), //sized box used for spacing

                  //Button Login
                  MyButton(
                    onTap: _registerUser,
                    text: "Register Account",
                  ),

                  const SizedBox(height: 20), //sized box used for spacing

                  //Button Login
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
                          onTap: () => _onTapChangeLoginPage(context),
                          child: Row(
                            children: [
                              Text(
                                "Already Have Account? ",
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 16),
                              ),
                              Text(
                                "Login Now",
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
          )),
    );
  }
}
