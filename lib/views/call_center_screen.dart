import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_app_bar.dart';
import 'package:fixit/components/custom_chat_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import '../src/data/app_size.dart';

class CallCenterScreen extends StatelessWidget {
  const CallCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          Stack(
            children: [
              const Positioned(
                bottom: 15,
                right: 35,
                child: CircleAvatar(
                  backgroundColor: Color(0xff1AAE29),
                  radius: 9,
                ),
              ),
              Image(
                height: PhoneSize.phoneHeight(context) * 0.2,
                image: const AssetImage(
                  'assets/images/app_logo.png',
                ),
              ),
            ],
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
              child: Column(
                children: [
                  CustomChatBar(
                    controller: controller,
                  ),
                  Expanded(
                    child: PageView(
                      controller: controller,
                      children: [
                        Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (context, index) => Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 15),
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    decoration: const BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                        topRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                      ),
                                    ),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'أحب أعرف تفاصيل الخدمات',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          'pm 10:30',
                                          style: TextStyle(
                                              color: Color(0xffD9D9D9),
                                              fontSize: 8),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height:
                                  MediaQuery.of(context).size.height * 0.075,
                              padding: const EdgeInsets.all(10),
                              child: TextField(
                                decoration: InputDecoration(
                                    suffixIcon: SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.15,
                                      width: MediaQuery.of(context).size.width *
                                          0.15,
                                      child: const Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(Icons.camera_alt_outlined),
                                            Spacer(),
                                            Icon(Icons.send)
                                          ],
                                        ),
                                      ),
                                    ),
                                    hintText: 'Write message ....',
                                    hintStyle: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: kPrimaryColor),
                                    filled: true,
                                    fillColor: const Color(0xffD9D9D9),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            SizedBox(height: 30,),
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                String numberCtrl = '01033262746';
                                FlutterPhoneDirectCaller.callNumber(numberCtrl);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 20),
                                color: Colors.green,
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      size: 35,
                                      color: Colors.white,
                                    ),
                                    Spacer(),
                                    Text(
                                      'Contact Information',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    Spacer()
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.width * 0.5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Website',
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'E-Mail',
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Phone',
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        'Social',
                                        style: TextStyle(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'www.fixit.com',
                                        style: TextStyle(
                                            color: Color(0xffA5A3A3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const Text(
                                        'Fixit@gmail.com',
                                        style: TextStyle(
                                            color: Color(0xffA5A3A3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const Text(
                                        '01014528698',
                                        style: TextStyle(
                                            color: Color(0xffA5A3A3),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            'assets/icons/facebook.png',
                                            height: 30,
                                          ),
                                        ],
                                      )
                                    ],

                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
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
}
