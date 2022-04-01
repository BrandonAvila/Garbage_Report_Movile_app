// ignore_for_file: non_constant_identifier_names, deprecated_member_use
import 'package:flutter/material.dart';
import 'consultar_pois.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Crear_pois extends StatefulWidget {
  @override
  _Crear_poisState createState() => _Crear_poisState();
}

class _Crear_poisState extends State<Crear_pois> {
  TextEditingController nombre = TextEditingController();
  TextEditingController caracteristicas = TextEditingController();
  TextEditingController descripcion = TextEditingController();
  TextEditingController fecha = TextEditingController();
  TextEditingController hora = TextEditingController();

  final formkey_yes = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 253, 206, 185),
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
              'Crear POI'.toUpperCase(),
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
                  controller: nombre,
                  decoration:
                      const InputDecoration(hintText: "Nombre "),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextField(
                  controller: caracteristicas,
                  decoration:
                      const InputDecoration(hintText: "Caracteristicas "),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextField(
                  controller: descripcion,
                  decoration: const InputDecoration(hintText: "Descripcion" ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Column(children: [
              //   SizedBox(
              //       width: 500, // or use fixed size like 200
              //       height: 250,
              //       child: GoogleMap(
              //         mapType: MapType.normal,
              //         initialCameraPosition: _kGooglePlex,
              //         myLocationEnabled: true,
              //         myLocationButtonEnabled: true,
              //       )
              //     )
              //   ]
              // ),
              Flexible(
                child: TextField(
                  controller: fecha,
                  decoration: const InputDecoration(labelText: "Fecha "),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextField(
                  controller: hora,
                  decoration: const InputDecoration(labelText: "Hora  "),
                ),
              ),
              const SizedBox(
                height: 20,
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
                    "Crear POI",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Consultar_poi (),
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
