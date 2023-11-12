import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  //TODO: Implement FormController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isEmailValid = true;
  bool isPasswordValid = true;
  bool isPasswordEmpty = false; // Initially valid
  final RegExp emailRegex =
      RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  void validateEmail(String email) {

      isEmailValid = emailRegex.hasMatch(email);

  }

  void validatePassword(String Password) {

      isPasswordValid = passwordController.text.isNotEmpty;

  }

}
