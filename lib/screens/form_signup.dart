import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:justduit/screens/home_screen.dart';
import 'package:justduit/screens/form_screen.dart';

class FormSignup extends StatefulWidget {
  const FormSignup({super.key});

  @override
  State<FormSignup> createState() => _FormSignupState();
}

class _FormSignupState extends State<FormSignup> {
  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isfullnameValid = true;
  bool isfullnameEmpty = false;
  bool isEmailValid = true;
  bool isPasswordValid = true;
  bool isPasswordEmpty = false;
  bool isConfirmPasswordValid = true;
  bool isConfirmPasswordEmpty = false; // Initially valid
  final RegExp emailRegex =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  void _validateFullname(String fullname) {
    setState(() {
      isEmailValid = fullnameController.text.isNotEmpty;
    });
  }

  void _validateEmail(String email) {
    setState(() {
      isEmailValid = emailRegex.hasMatch(email);
    });
  }

  void _validatePassword(String Password) {
    setState(() {
      isPasswordValid = passwordController.text.isNotEmpty;
    });
  }

  void _validateConfirmPassword(String confirmpassword) {
    setState(() {
      isConfirmPasswordValid = confirmPasswordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(246, 248, 251, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/justduit.png", width: 300),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "Sign Up Now and Unlock the Power of Justduit",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                          "Full Name",
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
                      controller: fullnameController,
                      onChanged: _validateFullname, // Validate on change
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: isEmailValid
                              ? BorderSide(color: Colors.transparent)
                              : BorderSide(color: Colors.red),
                        ),
                        errorText: isEmailValid ? null : 'Please fill the name',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
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
                      controller: emailController,
                      onChanged: _validateEmail, // Validate on change
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: isEmailValid
                              ? BorderSide(color: Colors.transparent)
                              : BorderSide(color: Colors.red),
                        ),
                        errorText: isEmailValid ? null : 'Email is not valid',
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
                      // obscureText: true,
                      controller: passwordController,
                      onChanged: _validatePassword, // Validate on change
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: isEmailValid
                              ? BorderSide(color: Colors.transparent)
                              : BorderSide(color: Colors.red),
                        ),
                        errorText:
                            isEmailValid ? null : 'Please fill the password',
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Confirm Password",
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
                      // obscureText: true,
                      controller: confirmPasswordController,
                      onChanged: _validateConfirmPassword, // Validate on change
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(13),
                          borderSide: isEmailValid
                              ? BorderSide(color: Colors.transparent)
                              : BorderSide(color: Colors.red),
                        ),
                        errorText:
                            isEmailValid ? null : 'Please Confirm the password',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          isfullnameEmpty = fullnameController.text.isEmpty;
                          isEmailValid = emailController.text.isNotEmpty;
                          isPasswordEmpty = passwordController.text.isEmpty;
                          isConfirmPasswordEmpty = confirmPasswordController.text.isEmpty; // Periksa apakah password kosong

                          if (!isfullnameEmpty && isEmailValid && !isPasswordEmpty && !isPasswordEmpty) {
                            // Email valid dan password diisi, navigasi ke HomeScreen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                            FocusScope.of(context).unfocus();
                          } else if (isPasswordEmpty) {
                            // Email tidak valid atau password kosong, atur pesan kesalahan jika password kosong
                            setState(() {
                              isPasswordEmpty = true;
                            });
                            // Tidak ada tindakan tambahan diperlukan jika email tidak valid
                          } else if (!isEmailValid) {
                            setState(() {
                              isEmailValid = true;
                            });
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: Text("Continue",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FormScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                  textAlign: TextAlign.center,
                                ))),
                      ),
                    ),
                    SizedBox(height: 200),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
