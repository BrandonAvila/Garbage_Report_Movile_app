// To parse this JSON data, do
//
//     final denuncia = denunciaFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Denuncia> denunciaFromJson(String str) => List<Denuncia>.from(json.decode(str).map((x) => Denuncia.fromJson(x)));

String denunciaToJson(List<Denuncia> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Denuncia {
    Denuncia({
        required this.idDenuncia,
        required this.titulodeDenuncia,
        required this.motivodeDenuncia,
        required this.fechadeDenuncia,
        required this.fotografiadelLugar,
        required this.ubicaciondeDenuncia,
    });

    final int idDenuncia;
    final String titulodeDenuncia;
    final String motivodeDenuncia;
    final String fechadeDenuncia;
    final String fotografiadelLugar;
    final String ubicaciondeDenuncia;

    factory Denuncia.fromJson(Map<String, dynamic> json) => Denuncia(
        idDenuncia: json["idDenuncia"],
        titulodeDenuncia: json["titulodeDenuncia"],
        motivodeDenuncia: json["motivodeDenuncia"],
        fechadeDenuncia: json["fechadeDenuncia"],
        fotografiadelLugar: json["fotografiadelLugar"],
        ubicaciondeDenuncia: json["ubicaciondeDenuncia"],
    );

    Map<String, dynamic> toJson() => {
        "idDenuncia": idDenuncia,
        "titulodeDenuncia": titulodeDenuncia,
        "motivodeDenuncia": motivodeDenuncia,
        "fechadeDenuncia": fechadeDenuncia,
        "fotografiadelLugar": fotografiadelLugar,
        "ubicaciondeDenuncia": ubicaciondeDenuncia,
    };
}


