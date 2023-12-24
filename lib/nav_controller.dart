import 'package:get/get.dart';
import 'package:viajes/bus.dart';
import 'package:viajes/flight.dart';
import 'package:viajes/home.dart';
import 'package:viajes/planing.dart';
import 'package:viajes/train.dart';

class Navcontroller extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    home(),
    flight(),
    train(),
    bus(),
    planing(),
  ];
}
