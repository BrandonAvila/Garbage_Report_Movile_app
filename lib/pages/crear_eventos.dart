// ignore_for_file: non_constant_identifier_names, deprecated_member_use
import 'package:flutter/material.dart';
import 'consultar_eventos.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Crear_eventos extends StatefulWidget {
  @override
  _Crear_eventosState createState() => _Crear_eventosState();
}

class _Crear_eventosState extends State<Crear_eventos> {
  TextEditingController nombredelEvento = TextEditingController();
  TextEditingController descripciondelEvento = TextEditingController();
  TextEditingController consideracionesEspeciales = TextEditingController();
  TextEditingController fechadelEvento = TextEditingController();
  TextEditingController ndpersonasRequeridas = TextEditingController();


  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(20.400417, -89.134857),
    zoom: 14.4746,
  );

  final formkey_yes = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor:  const Color.fromARGB(255, 216, 133, 163),
      appBar: AppBar(
        title: Text('Regresar', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.8),
        child: Form(
          key: formkey_yes,
          child: Column(
            children: <Widget>[
            Text(
              'Crear evento'.toUpperCase(),
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
            ),
              Flexible(
                child: TextField(
                  controller: nombredelEvento,
                  decoration:
                      const InputDecoration(hintText: "Nombre del evento"),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: TextField(
                  controller: descripciondelEvento,
                  decoration:
                      const InputDecoration(hintText: "Descripcion del evento "),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: TextField(
                  controller: consideracionesEspeciales,
                  decoration: const InputDecoration(hintText: "Consideraciones especiales "),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: TextField(
                  controller: fechadelEvento,
                  decoration: const InputDecoration(labelText: "Fecha del evento "),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Flexible(
                child: TextField(
                  controller: ndpersonasRequeridas,
                  decoration: const InputDecoration(labelText: "N° de personas requeridas "),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              /*Row(
                children: <Widget>[
                  Expanded (child: Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10)),
                      child: FlatButton(
                        
                          child: const Text(
                            "Adjuntar +",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {}
                          ),
                    ),
                  ),
                  Expanded(child: Container(
                      width: 110,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10)),
                      child: FlatButton(
                          child: const Text(
                            "Camara",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () {}
                          ),
                    ), 
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 80),
                width: 110,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                    child: const Text(
                      "Camara",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {}),
              ),*/
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: 185,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                  child: const Text(
                    "Crear evento",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Consultar_eventos (),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
