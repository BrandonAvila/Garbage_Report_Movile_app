// To parse this JSON data, do
//
//     final poi = poiFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Poi> poiFromJson(String str) => List<Poi>.from(json.decode(str).map((x) => Poi.fromJson(x)));

String poiToJson(List<Poi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Poi {
    Poi({
        required this.idPois,
        required this.nombre,
        required this.caracteristicas,
        required this.descripcion,
        required this.fecha,
        required this.hora,
    });

    final int idPois;
    final String nombre;
    final String caracteristicas;
    final String descripcion;
    final String fecha;
    final String hora;

    factory Poi.fromJson(Map<String, dynamic> json) => Poi(
        idPois: json["idPois"],
        nombre: json["nombre"],
        caracteristicas: json["caracteristicas"],
        descripcion: json["descripcion"],
        fecha: json["fecha"],
        hora: json["hora"],
    );

    Map<String, dynamic> toJson() => {
        "idPois": idPois,
        "nombre": nombre,
        "caracteristicas": caracteristicas,
        "descripcion": descripcion,
        "fecha": fecha,
        "hora": hora,
    };
}
