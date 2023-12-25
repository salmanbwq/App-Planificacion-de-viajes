import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Barrra de busqueda
            SizedBox(
              height: 40,
            ),
            BarraBusqueda(),
            SizedBox(
              height: 20,
            ),
            Lugares(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/vuelo.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(bottom: 100, right: 350),
                child: Center(
                    child: Text(
                  'Vuela',
                  style: TextStyle(
                    shadows: [Shadow(color: Colors.black, blurRadius: 20)],
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/train.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(bottom: 80, right: 100),
                child: Center(
                    child: Text(
                  'Reserva un tren',
                  style: TextStyle(
                    shadows: [Shadow(color: Colors.black, blurRadius: 20)],
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/bus.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 350, right: 200),
                child: Center(
                    child: Text(
                  'Súbete al bus',
                  style: TextStyle(
                    shadows: [Shadow(color: Colors.black, blurRadius: 30)],
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class Lugares extends StatefulWidget {
  const Lugares({
    super.key,
  });

  @override
  State<Lugares> createState() => _LugaresState();
}

class _LugaresState extends State<Lugares> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Westminster.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 300),
                child: Center(
                    child: Text(
                  'Viaja a Londres',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Ny.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 300),
                child: Center(
                    child: Text(
                  'Viaja a Nueva York',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/Dubai.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                margin: EdgeInsets.only(top: 200),
                child: Center(
                    child: Text(
                  'Viaja a Dubai',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarraBusqueda extends StatefulWidget {
  const BarraBusqueda({
    super.key,
  });

  @override
  State<BarraBusqueda> createState() => _BarraBusquedaState();
}

class _BarraBusquedaState extends State<BarraBusqueda> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              blurRadius: 4,
            )
          ]),
      padding: EdgeInsets.zero,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 390.0),
              child: const TextField(
                decoration: const InputDecoration.collapsed(
                  hintText: 'Buscar destinos...',
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
