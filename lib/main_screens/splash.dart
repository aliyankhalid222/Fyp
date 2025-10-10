import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:fyp/Screens/login.dart';

import '../credentials/login.dart';


// ignore: camel_case_types
class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

// ignore: camel_case_types
class _splash_screenState extends State<splash_screen> {

  @override
  void initState() {
    super.initState();

    // ✅ Timer for 3 seconds
    Timer(const Duration(seconds: 1), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const login_screen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF007BFF), Color(0xff160826)], // blue → cyan
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Center(
          child: Text(
            "Careerly",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white, // text color
            ),
          ),
        ),
      ),
    );
  }
}