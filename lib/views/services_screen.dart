import 'package:fixit/components/constants.dart';
import 'package:fixit/components/services.dart';
import 'package:fixit/service_screens/electricsscreen.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SizedBox(
              height: PhoneSize.phoneHeight(context) * 0.12,
              child: const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Which ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'ReadexPro',
                            ),
                          ),
                          Text(
                            'Service',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                              fontFamily: 'ReadexPro',
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'do you',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                      Text(
                        'need?',
                        style: TextStyle(
                          color: Color(0xffD79663),
                          fontSize: 20,
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Image(
                    image: AssetImage(
                        'assets/images/which_service_do_you_need.png'),
                  ),
                ],
              ),
            ),
          ),
          Row(
            //line 1
            children: [
              Services(
                image: 'assets/services/Electricity.png',
                service: 'Electricity',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const Electrics(),
                  );
                },
              ),
              Services(
                image: 'assets/services/water.png',
                service: 'Water',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const Water(),
                  );
                },
              ),
              Services(
                image: 'assets/services/carpentry.png',
                service: 'Carpentry',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const Carpentry(),
                  );
                },
              ),
            ],
          ),
          Row(
            //line 2
            children: [
              Services(
                image: 'assets/services/home_service.png',
                service: 'Home service',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const HomeService(),
                  );
                },
              ),
              Services(
                image: 'assets/services/building_work.png',
                service: 'Building work',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const BuildingWork(),
                  );
                },
              ),
              Services(
                image: 'assets/services/insulation_work.png',
                service: 'Insulation work',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const InsulationWork(),
                  );
                },
              ),
            ],
          ),
          Row(
            //line 3
            children: [
              Services(
                image: 'assets/services/road_work.png',
                service: 'Road work',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const RoadWork(),
                  );
                },
              ),
              Services(
                image: 'assets/services/smith_work.png',
                service: 'Smith work',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const SmithWork(),
                  );
                },
              ),
              Services(
                image: 'assets/services/mobile_maintenance.png',
                service: 'Mobile maintenance',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const MobileMaintenance(),
                  );
                },
              ),
            ],
          ),
          Row(
            //line 4
            children: [
              Services(
                image: 'assets/services/shipping_and_delivery.png',
                service: 'Shipping and Delivery',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const ShippingAndDelivery(),
                  );
                },
              ),
              Services(
                image: 'assets/services/mechanical.png',
                service: 'Mechanical',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const Mechanical(),
                  );
                },
              ),
              Services(
                image: 'assets/services/coiffeur.png',
                service: 'Coiffeur',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const Coiffeur(),
                  );
                },
              ),
            ],
          ),
          Row(
            //line 5
            children: [
              Services(
                image: 'assets/services/baby_sitter.png',
                service: 'Babysitter',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const BabySitter(),
                  );
                },
              ),
              Services(
                image: 'assets/services/elderly_sitter.png',
                service: 'Elderly sitter',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const ElderlySitter(),
                  );
                },
              ),
              Services(
                image: 'assets/services/medical_equipmentmainte.png',
                service: 'Medical equipment maintenance',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const MedicalEquipmentMaintenance(),
                  );
                },
              ),
            ],
          ),
          Row(
            //line 6
            children: [
              Services(
                image: 'assets/services/computer_maintenance.png',
                service: 'Computer maintenance',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const ComputerMaintenance(),
                  );
                },
              ),
              Services(
                image: 'assets/services/elevator_technician.png',
                service: 'Elevator technician',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const ElevatorTechnician(),
                  );
                },
              ),
              Services(
                image: 'assets/services/farmer.png',
                service: 'Farmer',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const Farmer(),
                  );
                },
              ),
            ],
          ),
          Row(
            //line 7
            children: [
              Services(
                image: 'assets/services/painting.png',
                service: 'Painting',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const Painting(),
                  );
                },
              ),
              Services(
                image: 'assets/services/graphic_design.png',
                service: 'Graphic Design ',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const GraphicDesign(),
                  );
                },
              ),
              Services(
                image: 'assets/services/gas_installation.png',
                service: 'Gas installation',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const GasInstallation(),
                  );
                },
              ),
            ],
          ),
          Row(
            //line 8
            children: [
              Services(
                image: 'assets/services/driver.png',
                service: 'Driver',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const Driver(),
                  );
                },
              ),
              Services(
                image: 'assets/services/calligrapher_and_painter.png',
                service: 'Calligrapher and painter',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const CalligrapherAndPainter(),
                  );
                },
              ),
              Services(
                image: 'assets/services/3d_design.png',
                service: '3D design',
                onTap: () {
                  AppNavigation.push(
                    context,
                    const DDesign(),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 25,)
        ],
      ),
    );
  }
}
