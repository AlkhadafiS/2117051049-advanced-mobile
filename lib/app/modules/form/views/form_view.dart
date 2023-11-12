import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/form_controller.dart';

class FormView extends GetView<FormController> {
  
  const FormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(246, 248, 251, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/justduit.png", width: 300),
            Text(
              "Hi, Welcome Back to Justduit",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Email Address",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: controller.emailController,
                    onChanged: controller.validateEmail, // Validate on change
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: controller.isEmailValid
                            ? BorderSide(color: Colors.transparent)
                            : BorderSide(color: Colors.red),
                      ),
                      errorText: controller.isEmailValid ? null : 'Email is not valid',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: true,
                    controller: controller.passwordController,
                    onChanged: controller.validatePassword, // Validate on change
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: controller.isEmailValid
                            ? BorderSide(color: Colors.transparent)
                            : BorderSide(color: Colors.red),
                      ),
                      errorText:
                          controller.isEmailValid ? null : 'Please fill the password',
                    ),
                  ),
                  // TextField(
                  //   obscureText: true,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(13),
                  //     ),
                  //   ),
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.isEmailValid = controller.emailController.text.isNotEmpty;
                        controller.isPasswordEmpty = controller.passwordController.text.isEmpty; // Periksa apakah password kosong

                        if (controller.isEmailValid && !controller.isPasswordEmpty) {
                          // Email valid dan password diisi, navigasi ke HomeScreen
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => HomeScreen(),
                          //   ),
                          // );
                        } else if (controller.isPasswordEmpty) {
                          // Email tidak valid atau password kosong, atur pesan kesalahan jika password kosong

                              controller.isPasswordEmpty = true;

                          // Tidak ada tindakan tambahan diperlukan jika email tidak valid
                        } else if (!controller.isEmailValid){

                              controller.isEmailValid = true;

                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Text("Sign In Now",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: TextButton(
                              onPressed: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => FormSignup(),
                                //   ),
                                // );
                              },
                              child: const Text(
                                'Create New Account',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                                textAlign: TextAlign.center,
                              ))),
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
