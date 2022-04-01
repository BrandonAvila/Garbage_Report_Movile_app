// ignore_for_file: non_constant_identifier_names, deprecated_member_use
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:garbage_movil/models/denuncia.dart';
import 'consultar_denuncias.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

Future<Denuncia> createDenuncia(
    String titulodeDenuncia,
    String motivodeDenuncia,
    String fechadeDenuncia,
    String fotografiadelLugar,
    String ubicaciondeDenuncia) async {
  final response = await http.post(
    Uri.parse('http://apigarbagereport.somee.com/api/Denuncia'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
        "titulodeDenuncia": titulodeDenuncia,
        "motivodeDenuncia": motivodeDenuncia,
        "fechadeDenuncia": fechadeDenuncia,
        "fotografiadelLugar": fotografiadelLugar,
        "ubicaciondeDenuncia": ubicaciondeDenuncia,
    }),
  );

  if (response.statusCode == 201) {
    return Denuncia.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Se creo la denuncia.');
  }
}

class Crear_denuncia extends StatefulWidget {
  @override
  _Crear_denunciaState createState() => _Crear_denunciaState();
}

// ignore: camel_case_types
class _Crear_denunciaState extends State<Crear_denuncia> {
  TextEditingController titulo = TextEditingController();
  TextEditingController motivo = TextEditingController();
  TextEditingController fecha = TextEditingController();
  TextEditingController fotografia = TextEditingController();
  TextEditingController ubicacion = TextEditingController();

  Future<Denuncia>? crear;

  // static final CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(20.400417, -89.134857),
  //   zoom: 14.4746,
  // );
  final formkey_yes = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
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
              Flexible(
                child: TextFormField(
                  controller: titulo,
                  validator: (String? value){
                    if (value != null && value.isEmpty){
                      return 'Rellena este campo';
                    }
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.title_rounded,
                    color: Colors.black,),
                    hintText: 'Nombre de la denuncia',
                    labelText: 'Nombre de la denuncia',
                  ),
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Flexible(
                child: TextFormField(
                  controller: motivo,
                  validator: (String? value){
                    if (value != null && value.isEmpty){
                      return 'Rellena este campo';
                    }
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.short_text_rounded,
                    color: Colors.black,),
                    hintText: 'Motivo de la denuncia',
                    labelText: 'Motivo de la denuncia',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Flexible(
                child: TextFormField(
                  controller: fecha,
                  validator: (String? value){
                    if (value != null && value.isEmpty){
                      return 'Rellena este campo';
                    }
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.date_range_rounded,
                    color: Colors.black,),
                    hintText: 'Fecha de la denuncia',
                    labelText: 'Fecha de la denuncia',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Flexible(
                child: TextFormField(
                  controller: ubicacion,
                  validator: (String? value){
                    if (value != null && value.isEmpty){
                      return 'Rellena este campo';
                    }
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.pin_drop_rounded,
                    color: Colors.black,),
                    hintText: 'Ubicacion de la denuncia',
                    labelText: 'Ubicacion de la denuncia',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
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
              //       ))
              // ]),
              Flexible(
                child: TextFormField(
                  controller: fotografia,
                  validator: (String? value){
                    if (value != null && value.isEmpty){
                      return 'Rellena este campo';
                    }
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.photo,
                    color: Colors.black,),
                    hintText: 'Fotografia de la denuncia',
                    labelText: 'Fotografia de la denuncia',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Container(
              //         width: 140,
              //         height: 40,
              //         decoration: BoxDecoration(
              //             color: Colors.purple,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: FlatButton(
              //             child: const Text(
              //               "Adjuntar +",
              //               style: TextStyle(color: Colors.white, fontSize: 20),
              //             ),
              //             onPressed: () {}),
              //       ),
              //     ),
              //     Expanded(
              //       child: Container(
              //         width: 110,
              //         height: 40,
              //         decoration: BoxDecoration(
              //             color: Colors.purple,
              //             borderRadius: BorderRadius.circular(10)),
              //         child: FlatButton(
              //             child: const Text(
              //               "Camara",
              //               style: TextStyle(color: Colors.white, fontSize: 20),
              //             ),
              //             onPressed: () {}),
              //       ),
              //     )
              //   ],
              // ),
              /*Container(
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
                    borderRadius: BorderRadius.circular(10)
                ),
                child: FlatButton(
                  child: const Text(
                    "Crear denuncia",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                  if (formkey_yes.currentState!.validate()) {
                  crear = createDenuncia(titulo.text, 
                    motivo.text, 
                    fecha.text, 
                    fotografia.text, 
                    ubicacion.text);
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(
                        content: Text('Denuncia creada')
                    )
                  );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Consultar_denuncias(),
                      ),
                    );
                  }
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
