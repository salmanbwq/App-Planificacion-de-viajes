import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class train extends StatefulWidget {
  const train({super.key});

  @override
  State<train> createState() => _trainState();
}

class _trainState extends State<train> {
  @override
  Widget build(BuildContext context) {
    return Text('al tren');
  }
}
