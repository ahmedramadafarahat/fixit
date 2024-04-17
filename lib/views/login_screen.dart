import 'package:fixit/components/auth_dialog.dart';
import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_divider.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../components/auth_button.dart';
import '../../components/custom_text_field.dart';
import 'forgot_password.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                color: Color(0xff1B3A56),
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
                    'SIGN IN NOW',
                    style: TextStyle(fontSize: 30, color: kPrimaryColor),
                  ),
                ),
                SizedBox(
                  height: PhoneSize.phoneHeight(context) * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextField(
                        isLast: false,
                        hint: 'example@gmail.com',
                        title: "E-Mail",
                        obscure: false,
                        icon: Ionicons.mail_outline,
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.025,
                      ),
                      const CustomTextField(
                        isLast: true,
                        hint: '********',
                        title: "Password",
                        obscure: true,
                        icon: Ionicons.lock_closed_outline,
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.025,
                      ),
                      GestureDetector(
                          onTap: () => AppNavigation.push(
                              context, const ForgotPasswordScreen()),
                          child: const Text(
                            'Forgot Password !',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.025,
                      ),
                      Center(
                        child: AuthButton(
                          isHollow: false,
                          onTap: () => showDialog(
                              context: context,
                              builder: (context) => const AuthDialog()),
                          title: 'SIGN IN',
                        ),
                      ),
                      SizedBox(
                        height: PhoneSize.phoneHeight(context) * 0.025,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New User ? ',
                      style: TextStyle(fontSize: 25, color: Color(0xff8A8989)),
                    ),
                    TextButton(
                      onPressed: () =>
                          AppNavigation.pushR(context, const RegisterScreen()),
                      child: const Text(
                        'SIGN UP',
                        style:
                            TextStyle(fontSize: 25, color: kPrimaryColor),
                      ),
                    )
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
