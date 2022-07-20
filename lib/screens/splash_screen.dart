// ignore_for_file: avoid_print, sized_box_for_whitespace

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:meeraki_store/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    internetCheck();
  }

  Future<void> internetCheck() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        Future.delayed(const Duration(seconds: 3), () {
          
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const OnBoardingScreens()));
          //  loginCheckFunc();
        });
      }
    } on SocketException catch (_) {
      print('not connected');
      showAlertDialog(context);
    }
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("No internet"),
      content: const Text(
          "Please check your internet connection and then restart your app."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  height: width - 100,
                  width: width - 100,
                  child: Image.asset("assets/logo.png")),
            )
          ],
        ),
      ),
    );
  }
}
