import 'package:flutter/material.dart';
import '../pages/loginpage.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
