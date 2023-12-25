// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:viajes/nav_controller.dart';

class barranav extends StatelessWidget {
  const barranav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Navcontroller controller = Get.put(Navcontroller());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: GNav(
        /*tabBorder: Border.all(
          color: Colors.blue,
        ),*/
        padding: EdgeInsets.all(20),
        gap: 20,
        activeColor: Colors.blue,
        onTabChange: (value) {
          print(value);
          controller.index.value = value;
        },
        tabs: [
          // ignore: prefer_const_constructors
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          // ignore: prefer_const_constructors
          GButton(
            icon: Icons.flight,
            text: 'Vuelos',
          ),
          GButton(
            icon: Icons.train,
            text: 'Trenes',
          ),
          GButton(icon: Icons.bus_alert_sharp, text: 'Buses'),
          GButton(
            icon: Icons.travel_explore,
            text: 'planificar',
          )
        ],
      ),
    );
  }
}
