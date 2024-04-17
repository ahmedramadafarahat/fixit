import 'package:fixit/components/constants.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../components/auth_button.dart';
import '../../components/custom_text_field.dart';
import 'otp_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: PhoneSize.phoneHeight(context) * 0.18,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [kPrimaryColor, Color(0xFF3B7FBC)]),
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(200, 50),
                    bottomRight: Radius.elliptical(200, 50)),
              ),
              child: Image.asset(
                "assets/images/app_logo.png",
                scale: 3,
              ),
            ),
            SizedBox(
              height: PhoneSize.phoneHeight(context) * 0.075,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Forgot Your Password',
                    style: TextStyle(fontSize: 25, color: kPrimaryColor),
                  ),
                ),
                SizedBox(
                  height: PhoneSize.phoneHeight(context) * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextField(
                        isLast: true,
                        hint: 'example@gmail.com',
                        title: "E-Mail",
                        obscure: false,
                        icon: Ionicons.mail_outline,
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.025,
                      ),
                      Center(
                        child: AuthButton(
                          isHollow: false,
                          onTap: () =>
                              AppNavigation.pushR(context, const OtpScreen()),
                          title: 'SEND',
                        ),
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.025,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
