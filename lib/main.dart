// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'application.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());
}

void initialization(BuildContext context) async {
  print('ready in 3...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 2...');
  await Future.delayed(const Duration(seconds: 1));
  print('ready in 1...');
  await Future.delayed(const Duration(seconds: 1));
  print('go!');
}
