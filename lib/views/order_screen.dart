import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_app_bar.dart';
import 'package:fixit/components/custom_current_card.dart';
import 'package:fixit/components/custom_order_bar.dart';
import 'package:fixit/components/custom_previous_card.dart';
import 'package:flutter/material.dart';

import '../src/data/app_size.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Image(
              height: PhoneSize.phoneHeight(context) * 0.2,
              image: const AssetImage(
                'assets/images/order.png',
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffEDEDED),
                border: const Border(
                  top: BorderSide(color: Color(0xff1B3A56), width: 4),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  CustomOrderBar(
                    controller: controller,
                  ),
                  Expanded(
                    child: PageView(
                      controller: controller,
                      children: [
                        ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                color: kPrimaryColor,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'processes',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'ReadexPro',
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'Date',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'ReadexPro',
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'Status',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'ReadexPro',
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        'Delete',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'ReadexPro',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const CustomCurrentCard(
                                service: 'Electricity',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.blue,
                                status: 'Success'),
                            const CustomCurrentCard(
                                service: 'Carpentry',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.red,
                                status: 'Failed'),
                            const CustomCurrentCard(
                                service: 'Home service',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.green,
                                status: 'Under Review'),
                            const CustomCurrentCard(
                                service: 'Electricity',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.blue,
                                status: 'Success'),
                            const CustomCurrentCard(
                                service: 'Electricity',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.blue,
                                status: 'Success'),
                            const CustomCurrentCard(
                                service: 'Electricity',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.blue,
                                status: 'Success'),
                            const CustomCurrentCard(
                                service: 'Electricity',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.blue,
                                status: 'Success'),
                            const CustomCurrentCard(
                                service: 'Electricity',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.blue,
                                status: 'Success'),
                            const CustomCurrentCard(
                                service: 'Electricity',
                                date: '29 4-2002',
                                colorOfCircleAvatar: Colors.blue,
                                status: 'Success'),
                          ],
                        ),
                        ListView(
                          children: const [
                            CustomPreviousCard(
                              image: 'assets/images/Don.jpg',
                              name: 'Ahmed Okal',
                              time: '6 Months',
                              service: 'Carpentry Service',
                            ),
                            CustomPreviousCard(
                              image: 'assets/images/Don.jpg',
                              name: 'Ahmed Okal',
                              time: '6 Months',
                              service: 'Carpentry Service',
                            ),
                            CustomPreviousCard(
                              image: 'assets/images/Don.jpg',
                              name: 'Ahmed Okal',
                              time: '6 Months',
                              service: 'Carpentry Service',
                            ),
                            CustomPreviousCard(
                              image: 'assets/images/Don.jpg',
                              name: 'Ahmed Okal',
                              time: '6 Months',
                              service: 'Carpentry Service',
                            ),
                            CustomPreviousCard(
                              image: 'assets/images/Don.jpg',
                              name: 'Ahmed Okal',
                              time: '6 Months',
                              service: 'Carpentry Service',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25,),
        ],
      ),
    );
  }
}
