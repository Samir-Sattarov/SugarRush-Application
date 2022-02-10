import 'package:flutter/material.dart';

class FormValidator {
  static String? empty(value, String errorMessage) {
    if (value == null || value.isEmpty) {
      return errorMessage;
    }
    return null;
  }

  static String? validateEmail(value) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value ?? '');
    if (value == null || value.isEmpty || !emailValid) {
      return 'Please Enter Email';
    }
    return null;
  }

  static String? passwordConfirm(value, TextEditingController controller) {
    if (value == null || value.isEmpty) {
      return 'Required';
    }

    if (value.toString() != controller.text) {
      return "Password Mis match";
    }

    return null;
  }
}
