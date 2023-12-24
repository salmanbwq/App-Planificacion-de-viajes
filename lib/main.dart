import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:viajes/navigationBar.dart';
import 'package:viajes/nav_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Viajes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Navcontroller controller = Get.put(Navcontroller());
    return Scaffold(
      /*appBar: AppBar(
        title: SizedBox(
          child: Center(child: Text("Planificador Viajes")),
        ),
      ),*/
      bottomNavigationBar: barranav(),
      body: Obx(() => controller.pages[controller.index.value]),
    );
  }
}
