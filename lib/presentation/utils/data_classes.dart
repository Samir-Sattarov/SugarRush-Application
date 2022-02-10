import 'package:flutter/material.dart';

class ListIcons {
  final String text;
  final String image;

  ListIcons({required this.text, required this.image});
}

class ListCards {
  final String text;
  final String image;

  ListCards({required this.text, required this.image});
}

class BuyCardsList {
  final String image;
  final String title;
  final String subtitle;

  BuyCardsList(
      {required this.image, required this.title, required this.subtitle});
}

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
