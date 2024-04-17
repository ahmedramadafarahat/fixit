import 'package:fixit/components/constants.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:flutter/material.dart';

class AuthDialog extends StatelessWidget {
  const AuthDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: PhoneSize.phonewidth(context) * 0.05,
            vertical: PhoneSize.phoneHeight(context) * 0.25),
        decoration: BoxDecoration(
            border: Border.all(
                color: kPrimaryColor,
                width: 2.5,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/warning.png',
              scale: 1.3,
            ),
            const Text(
              "Oops !",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Something Went Wrong",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            const Text(
              "Please Enter Your Data Correctly",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            GestureDetector(
              onTap: () => AppNavigation.pop(context),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Try Again",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
