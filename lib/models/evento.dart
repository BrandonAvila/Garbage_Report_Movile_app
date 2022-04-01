// To parse this JSON data, do
//
//     final evento = eventoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Evento> eventoFromJson(String str) => List<Evento>.from(json.decode(str).map((x) => Evento.fromJson(x)));

String eventoToJson(List<Evento> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Evento {
    Evento({
      required this.idEventos,
      required this.nombredelEvento,
      required this.descripciondelEvento,
      required this.consideracionesEspeciales,
      required this.fechadelEvento,
      required this.ndpersonasRequeridas,
    });

    final int idEventos;
    final String nombredelEvento;
    final String descripciondelEvento;
    final String consideracionesEspeciales;
    final String fechadelEvento;
    final String ndpersonasRequeridas;

    factory Evento.fromJson(Map<String, dynamic> json) => Evento(
        idEventos: json["idEventos"],
        nombredelEvento: json["nombredelEvento"],
        descripciondelEvento: json["descripciondelEvento"],
        consideracionesEspeciales: json["consideracionesEspeciales"],
        fechadelEvento: json["fechadelEvento"],
        ndpersonasRequeridas: json["ndpersonasRequeridas"],
    );

    Map<String, dynamic> toJson() => {
        "idEventos": idEventos,
        "nombredelEvento": nombredelEvento,
        "descripciondelEvento": descripciondelEvento,
        "consideracionesEspeciales": consideracionesEspeciales,
        "fechadelEvento": fechadelEvento,
        "ndpersonasRequeridas": ndpersonasRequeridas,
    };
}
