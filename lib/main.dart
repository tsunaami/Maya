import 'package:flutter/material.dart';
import 'package:untitled/LoginPage.dart';
import 'package:untitled/logo.dart';

void main() {
  runApp(const Maya());
}

class Maya extends StatelessWidget {
  const Maya({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maya',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Logo(),
    );
  }
}

