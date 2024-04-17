import 'package:fixit/components/constants.dart';
import 'package:flutter/material.dart';

class CustomBookTextField extends StatelessWidget {
  const CustomBookTextField({
    super.key,
    required this.title,
    required this.maximumLines,
    this.readOnly,
  });
  final String title;
  final int maximumLines;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: const Border(
            top: BorderSide(color: kPrimaryColor, width: 4),
          ),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: TextField(
          readOnly: readOnly!,
          maxLines: maximumLines,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            focusColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.circular(10),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.0),
            ),
            hintText: title,
          ),
        ),
      ),
    );
  }
}
