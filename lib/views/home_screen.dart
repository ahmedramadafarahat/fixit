import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_app_bar.dart';
import 'package:fixit/components/custom_circle_avatar.dart';
import 'package:fixit/components/most_popular_services.dart';
import 'package:fixit/components/recommended_for_you.dart';
import 'package:fixit/service_screens/electricsscreen.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:fixit/views/services_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: const CustomAppBar(),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: PhoneSize.phoneHeight(context) * 0.03,
                horizontal: PhoneSize.phonewidth(context) * 0.025),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                  ),
                ],
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    kPrimaryColor,
                    Color(0xff4f95d4),
                  ],
                ),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  width: 3,
                  color: kPrimaryColor,
                ),
              ),
              height: PhoneSize.phoneHeight(context) * 0.19,
              width: double.infinity,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: PhoneSize.phoneHeight(context) * 0.012,
                        horizontal: PhoneSize.phonewidth(context) * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '40% OFF',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'ReadexPro',
                          ),
                        ),
                        SizedBox(
                          height: PhoneSize.phoneHeight(context) * 0.01,
                        ),
                        const Text(
                          'Full Services',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontFamily: 'ReadexPro',
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(
                                  color: Colors.white,
                                  style: BorderStyle.solid),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              shadowColor: Colors.white,
                              elevation: 6,
                              backgroundColor: Colors.black),
                          onPressed: () {
                            AppNavigation.push(
                              context,
                              const Water(),
                            );
                          },
                          child: const Text(
                            'Book Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'ReadexPro',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: PhoneSize.phonewidth(context) * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: PhoneSize.phoneHeight(context) * 0.01),
                    child: Image(
                      height: PhoneSize.phoneHeight(context) * 0.15,
                      image: const AssetImage('assets/images/client.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.0012,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Choose Service',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'ReadexPro',
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ServicesScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'ReadexPro',
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.114,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomCircleAvatar(
                    image: 'assets/images/electricity.jpg',
                    onTap: () {
                      AppNavigation.push(
                        context,
                        const Electrics(),
                      );
                    }),
                CustomCircleAvatar(
                    image: 'assets/images/water.jpg',
                    onTap: () {
                      AppNavigation.push(
                        context,
                        const Water(),
                      );
                    }),
                CustomCircleAvatar(
                    image: 'assets/images/carpentry.jpg',
                    onTap: () {
                      AppNavigation.push(
                        context,
                        const Carpentry(),
                      );
                    }),
                CustomCircleAvatar(
                    image: 'assets/images/home_service.jpg',
                    onTap: () {
                      AppNavigation.push(
                        context,
                        const HomeService(),
                      );
                    }),
                CustomCircleAvatar(
                    image: 'assets/images/coiffeur.jpg',
                    onTap: () {
                      AppNavigation.push(
                        context,
                        const Coiffeur(),
                      );
                    }),
                // CustomCircleAvatar(
                //     image: 'assets/images/driver.jpeg',
                //     onTap: () {
                //       AppNavigation.push(
                //         context,
                //         const Driver(),
                //       );
                //     }),
              ],
            ),
          ),

          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.01,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Most Popular Services',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'ReadexPro',
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'ReadexPro',
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.12,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                MostPopularServices(
                  image: 'assets/icons/electricityIcon.png',
                  service: 'Electricity',
                  discount: '20% OFF ',
                ),
                MostPopularServices(
                  image: 'assets/icons/home_serviceIcon.png',
                  service: 'Home service',
                  discount: '30% OFF ',
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Divider(
              color: kPrimaryColor,
              thickness: 3,
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Recommended For You',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'ReadexPro',
                    color: kPrimaryColor,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'ReadexPro',
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.035,
          ),
          SizedBox(
            height: PhoneSize.phoneHeight(context) * 0.2,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    RecommendedForYou(
                        name: 'Ahmed Ramadan',
                        lastStar: Icons.star,
                        rate: '(190)',
                        service: 'electricity'),
                    Align(
                        alignment: FractionalOffset(2, -0.2),
                        child: CircleAvatar(
                          foregroundColor: kPrimaryColor,
                          backgroundColor: Color(0xFFD8D8D8),
                          child: Icon(
                            Icons.person_outline,
                          ),
                          radius: 30,
                        )),
                  ],
                ),

                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    RecommendedForYou(
                        name: 'Ahmed Okal',
                        lastStar: Icons.star,
                        rate: '(190)',
                        service: 'water'),
                    Align(
                        alignment: FractionalOffset(2, -0.2),
                        child: CircleAvatar(
                          foregroundColor: kPrimaryColor,
                          backgroundColor: Color(0xFFD8D8D8),
                          child: Icon(
                            Icons.person_outline,
                          ),
                          radius: 30,
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25,)
        ],
      ),
    );
  }
}
