import 'package:fixit/components/constants.dart';
import 'package:flutter/material.dart';

import '../src/data/app_size.dart';
import 'search_dialog.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/the godfather.jpeg'),
          ),
          SizedBox(
            width: PhoneSize.phonewidth(context) * 0.02,
          ),
          const Column(
            children: [
              Text(
                'welcome back',
                style: TextStyle(
                  fontFamily: 'ReadexPro',
                  fontSize: 10,
                ),
              ),
              Text(
                'godfather',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ReadexPro',
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Spacer(),
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     Icons.notifications,
          //     size: 30,
          //     color: Color(0xff1B3A56),
          //   ),
          // ),
          IconButton(
            onPressed: () => showDialog(
                context: context, builder: (context) => const SearchDialog()),
            icon: const Icon(
              Icons.tune_sharp,
              size: 30,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
