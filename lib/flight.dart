import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class flight extends StatefulWidget {
  const flight({super.key});

  @override
  State<flight> createState() => _flightState();
}

List<String> Origen = <String>["Madrid", "Barcelona", "Valencia"];
List<String> Destino = <String>["Madrid", "Barcelona", "Valencia"];

Map<String, int> _counters = {"Adulto": 0, "Niños": 0, "Bebés": 0};

class _flightState extends State<flight> {
  @override
  Widget build(BuildContext context) {
    TextEditingController dateCtl = TextEditingController();
    TextEditingController dateCtl1 = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.black, blurRadius: 6)],
              color: Colors.blueAccent,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(
            children: [
              BarraBusquedaVuelos(dateCtl, context, dateCtl1),
            ],
          ),
        ),
      ),
    );
  }

  Column BarraBusquedaVuelos(TextEditingController dateCtl,
      BuildContext context, TextEditingController dateCtl1) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50, left: 50),
          child: Column(
            children: [
              Row(
                children: [
                  Desplegable(Origen),
                  SizedBox(
                    width: 10,
                  ),
                  Desplegable(Destino),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      width: 200,
                      child: SeleccionaFecha(dateCtl, context, 'Fecha ida')),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      width: 200,
                      child:
                          SeleccionaFecha(dateCtl1, context, 'Fecha vuelta')),
                ],
              ),
              Container(),
            ],
          ),
        ),
      ],
    );
  }

  Container Desplegable(List<String> desplegable) {
    return Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.white)),
        width: 200,
        child: DropdownButtonFormField(
          items: desplegable.map((e) {
            return DropdownMenuItem(child: Text(e), value: e);
          }).toList(),
          onChanged: (String? value) {},
          isDense: true,
          isExpanded: true,
        ));
  }

  TextFormField SeleccionaFecha(
      TextEditingController dateCtl, BuildContext context, String Input) {
    return TextFormField(
      controller: dateCtl,
      decoration: InputDecoration(
        hintText: Input,
        border: OutlineInputBorder(),
      ),
      onTap: () async {
        await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2015),
          lastDate: DateTime(2025),
        ).then((selectedDate) {
          if (selectedDate != null) {
            dateCtl.text = DateFormat('yyyy-MM-dd').format(selectedDate);
          }
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter date.';
        }
        return null;
      },
    );
  }
}
