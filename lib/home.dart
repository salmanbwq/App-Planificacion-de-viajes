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
                margin: EdgeInsets.only(top: 50, right: 150),
                child: Center(
                    child: Text(
                  'Reserva tu vuelo',
                  style: TextStyle(
                    color: Colors.blue,
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
                  'Reserva tren',
                  style: TextStyle(
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
                margin: EdgeInsets.only(top: 350, right: 150),
                child: Center(
                    child: Text(
                  'Reserva tu bus',
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
    ));
  }
}

class Lugares extends StatelessWidget {
  const Lugares({
    super.key,
  });

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

class BarraBusqueda extends StatelessWidget {
  const BarraBusqueda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              // Limitar el ancho del TextField
              constraints: BoxConstraints(maxWidth: 400.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar destinos...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            child: InkWell(
              onTap: () {},
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
