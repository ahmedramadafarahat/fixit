import 'package:fixit/components/constants.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      trailingIcon: const Icon(Icons.arrow_drop_down_sharp),
      inputDecorationTheme: const InputDecorationTheme(
          hintStyle:
              TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          contentPadding: EdgeInsets.all(20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ))),
      width: MediaQuery.of(context).size.width * 0.9,
      onSelected: (value) {},
      dropdownMenuEntries: const [
        DropdownMenuEntry(
          value: 1,
          label: 'اللغة العربية',
          labelWidget: Text(
            'اللغة العربية',
          ),
        ),
        DropdownMenuEntry(
          value: 2,
          label: 'English',
          labelWidget: Text("English"),
        )
      ],
      hintText: hint,
    );
  }
}
