import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_text_field.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/the godfather.jpeg'),
            ),
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.01,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Governorate',
                      style: TextStyle(
                        color: Color(0xff001A72),
                        fontSize: 20,
                      ),
                    ),
                    DropdownMenu(
                      trailingIcon: const Icon(Icons.arrow_drop_down_sharp),
                      inputDecorationTheme: const InputDecorationTheme(
                        hintStyle: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.81,
                      onSelected: (value) {},
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(
                          value: 1,
                          label: 'Gharbia',
                          labelWidget: Text(
                            'Gharbia',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                      hintText: 'Gharbia',
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'City',
                      style: TextStyle(
                        color: Color(0xff001A72),
                        fontSize: 20,
                      ),
                    ),
                    DropdownMenu(
                      trailingIcon: const Icon(Icons.arrow_drop_down_sharp),
                      inputDecorationTheme: const InputDecorationTheme(
                        hintStyle: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                        contentPadding: EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide: BorderSide(
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.81,
                      onSelected: (value) {},
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(
                          value: 1,
                          label: 'Tanta',
                          labelWidget: Text(
                            'Tanta',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ),
                        DropdownMenuEntry(
                          value: 2,
                          label: 'El-Mahalla El-Kubra',
                          labelWidget: Text("El-Mahalla El-Kubra"),
                        ),
                        DropdownMenuEntry(
                          value: 3,
                          label: 'Qutor',
                          labelWidget: Text(
                            'Qutor',
                          ),
                        ),
                        DropdownMenuEntry(
                          value: 4,
                          label: 'Basyoun',
                          labelWidget: Text("Basyoun"),
                        ),
                        DropdownMenuEntry(
                          value: 5,
                          label: 'Kafr El Zayat',
                          labelWidget: Text(
                            'Kafr El Zayat',
                          ),
                        ),
                        DropdownMenuEntry(
                          value: 6,
                          label: 'El Santa',
                          labelWidget: Text("El Santa"),
                        ),
                        DropdownMenuEntry(
                          value: 7,
                          label: 'Zefta',
                          labelWidget: Text("Zefta"),
                        ),
                        DropdownMenuEntry(
                          value: 8,
                          label: 'Samanoud',
                          labelWidget: Text("Samanoud"),
                        ),
                      ],
                      hintText: 'Tanta',
                    ),
                  ],
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(300, 50),
                        backgroundColor: kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Save',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
