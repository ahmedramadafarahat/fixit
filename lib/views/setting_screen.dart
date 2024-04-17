import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_setting_container.dart';
import 'package:fixit/provider/provider.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/views/about_fixit.dart';
import 'package:fixit/views/edit_profile_page.dart';
import 'package:fixit/views/our_team.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/custom_app_bar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const Text(
              'Settings',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                fontFamily: 'ReadexPro',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/images/the godfather.jpeg',
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ahmed okal',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                        fontFamily: 'ReadexPro',
                      ),
                    ),
                    const Text(
                      'ahmedokal6996@gmail.com',
                      style: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 12,
                        fontFamily: 'ReadexPro',
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                            width: 2,
                            color: Color(0xffE78125),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fixedSize: const Size(130, 23)),
                      onPressed: () {
                        AppNavigation.push(
                          context,
                          const EditProfilePage(),
                        );
                      },
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 12,
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomSettingContainer(
              onTap: () {},
              icon: const Icon(
                Icons.language_outlined,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'LANGUAGE',
            ),
            Consumer<UiProvider>(
              builder: (context, UiProvider notifier, child) {
                return CustomSettingContainer(
                  onTap: () {},
                  icon: const Icon(
                    Icons.nightlight,
                    color: kPrimaryColor,
                    size: 32,
                  ),
                  title: 'MOOD',
                  icon2: Switch(
                    activeTrackColor: kPrimaryColor,
                    value: notifier.isDark,
                    onChanged: (value) => notifier.changeTheme(),
                  ),
                );
              },
            ),
            CustomSettingContainer(
              onTap: () {
                AppNavigation.push(
                  context,
                  const AboutFixIt(),
                );
              },
              image: const Image(
                height: 45,
                image: AssetImage(
                  'assets/images/fixitlogo.png',
                ),
              ),
              title: 'About FIXIT',
            ),
            CustomSettingContainer(
              onTap: () {},
              icon: const Icon(
                Icons.warning_amber_outlined,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Privacy Policy',
            ),
            CustomSettingContainer(
              onTap: () {},
              icon: const Icon(
                Icons.share_rounded,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Share FIXIT',
            ),
            CustomSettingContainer(
              onTap: () {},
              icon: const Icon(
                Icons.rate_review_outlined,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Your Rating',
            ),
            CustomSettingContainer(
              onTap: () {
                AppNavigation.push(
                  context,
                  const OurTeam(),
                );
              },
              icon: const Icon(
                Icons.groups,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Our Team',
            ),
            CustomSettingContainer(
              onTap: () {},
              icon: const Icon(
                Icons.logout,
                color: kPrimaryColor,
                size: 32,
              ),
              title: 'Log Out',
            ),
          ],
        ),
      ),
    );
  }
}
