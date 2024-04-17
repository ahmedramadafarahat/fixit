import 'package:fixit/components/constants.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:fixit/views/login_screen.dart';
import 'package:fixit/views/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../components/auth_button.dart';
import '../components/custom_divider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome Back To',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: kPrimaryColor,
                ),
              ),
              const Text(
                'Fixit !',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: kPrimaryColor,
                ),
              ),
              Image.asset(
                'assets/images/app_logo.png',
              ),
              AuthButton(
                isHollow: true,
                onTap: () {
                  AppNavigation.push(context, const LoginScreen());
                },
                title: 'SIGN IN',
              ),
              AuthButton(
                isHollow: false,
                onTap: () {
                  AppNavigation.push(context, const RegisterScreen());
                },
                title: 'SIGN UP',
              ),
              SizedBox(
                height: PhoneSize.phoneHeight(context) * 0.025,
              ),
              const CustomDivider(),
              SizedBox(
                height: PhoneSize.phoneHeight(context) * 0.05,
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
                height: PhoneSize.phoneHeight(context) * 0.03,
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
        ),
      ),
    );
  }
}
