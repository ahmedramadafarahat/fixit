import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_divider.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:fixit/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../components/auth_button.dart';
import '../components/auth_dialog.dart';
import '../components/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
              height: PhoneSize.phoneHeight(context) * 0.025,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'SIGN UP NOW',
                    style: TextStyle(fontSize: 30, color: kPrimaryColor),
                  ),
                ),
                SizedBox(
                  height: PhoneSize.phoneHeight(context) * 0.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextField(
                        isLast: false,
                        hint: 'John Smith',
                        title: "Full Name",
                        obscure: false,
                        icon: Ionicons.person_outline,
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.01,
                      ),
                      const CustomTextField(
                        isLast: false,
                        hint: 'example@gmail.com',
                        title: "E-Mail",
                        obscure: false,
                        icon: Ionicons.mail_outline,
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.01,
                      ),
                      const CustomTextField(
                        isLast: false,
                        hint: '********',
                        title: "Password",
                        obscure: true,
                        icon: Ionicons.lock_closed_outline,
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.01,
                      ),
                      const CustomTextField(
                        isLast: true,
                        hint: '********',
                        title: "Confirm Password",
                        obscure: true,
                        icon: Ionicons.lock_closed_outline,
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.01,
                      ),
                      Center(
                        child: AuthButton(
                          isHollow: false,
                          onTap: () => showDialog(
                              context: context,
                              builder: (context) => const AuthDialog()),
                          title: 'SIGN UP',
                        ),
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.01,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already Have Account?',
                      style: TextStyle(fontSize: 15, color: Color(0xff8A8989)),
                    ),
                    GestureDetector(
                      onTap: () {
                        AppNavigation.pushR(
                          context,
                          const LoginScreen(),
                        );
                      },
                      child: const Text(
                        ' Login Here',
                        style:
                            TextStyle(fontSize: 15, color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: PhoneSize.phoneHeight(context) * 0.025,
                ),
                const CustomDivider(),
                SizedBox(
                  height: PhoneSize.phoneHeight(context) * 0.025,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Ionicons.logo_facebook,
                      color: Colors.blue,
                      size: 35,
                    ),
                    SizedBox(
                      width: PhoneSize.phonewidth(context) * 0.025,
                    ),
                    const Icon(
                      Ionicons.logo_apple,
                      color: Colors.black,
                      size: 35,
                    ),
                    SizedBox(
                      width: PhoneSize.phonewidth(context) * 0.025,
                    ),
                    const Icon(
                      Ionicons.logo_google,
                      size: 35,
                      color: Colors.redAccent,
                    ),
                  ],
                ),
                SizedBox(
                  height: PhoneSize.phoneHeight(context) * 0.025,
                ),
                const Text(
                  'Sign In With Another Account',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xffC1BEBE),
                  ),
                ),
                SizedBox(
                  height: PhoneSize.phoneHeight(context) * 0.005,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
