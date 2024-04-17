import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_app_bar.dart';
import 'package:fixit/components/custom_book_text_field.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:fixit/views/book_sucess_screen.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({super.key});

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  final TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Image(
                  height: PhoneSize.phoneHeight(context) * 0.15,
                  width: PhoneSize.phonewidth(context) * 0.25,
                  image: const AssetImage(
                    'assets/images/Don.jpg',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ahmed okal',
                        style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontFamily: 'ReadexPro',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'water service',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffF2A365),
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: kPrimaryColor,
                          ),
                          Text(
                            'tanta',
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffEDEDED),
                border: const Border(
                  top: BorderSide(color: kPrimaryColor, width: 4),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView(
                children: [
                  const Center(
                    child: Text(
                      'Book Now !',
                      style: TextStyle(
                        fontSize: 20,
                        color: kPrimaryColor,
                        fontFamily: 'ReadexPro',
                      ),
                    ),
                  ),
                  const CustomBookTextField(
                    readOnly: false,
                    title: 'Description Of The  Problem',
                    maximumLines: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: const Border(
                          top: BorderSide(color: kPrimaryColor, width: 4),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 3,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Container(
                        height: 60,
                        width: 170,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              height: 30,
                              image: AssetImage(
                                'assets/icons/camera.png',
                              ),
                            ),
                            Text(
                              'Upload Image',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const CustomBookTextField(
                    readOnly: false,
                    title: 'Address',
                    maximumLines: 1,
                  ),
                  const CustomBookTextField(
                    readOnly: false,
                    title: 'Phone',
                    maximumLines: 1,
                  ),
                  Padding(
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
                        controller: _dateController,
                        maxLines: 1,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 2.0),
                          ),
                          hintText: 'Date and Time',
                        ),
                        readOnly: true,
                        onTap: () {
                          _selectDate();
                        },
                      ),
                    ),
                  ),
                  const CustomBookTextField(
                    title: 'Payment Cash',
                    maximumLines: 1,
                    readOnly: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        backgroundColor: kPrimaryColor,
                      ),
                      onPressed: () {
                        AppNavigation.push(
                          context,
                          const BookSuccess(),
                        );
                      },
                      child: const Text(
                        'Book',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
