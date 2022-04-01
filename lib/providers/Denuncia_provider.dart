import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:garbage_movil/models/denuncia.dart';
import 'package:http/retry.dart';
import 'package:http/http.dart' as http;

class DenunciaProvider extends ChangeNotifier {
  final String _host = 'apigarbagereport.somee.com';
  // final Map<String, dynamic> _parameters = {'key' : ''};
  List<Denuncia> displayDenuncia = [];
  DenunciaProvider() {
    getDenuncias();
  }

  getDenuncias() async {
    const endpoint = '/api/Denuncia/Todos';
    final url = Uri.http(_host, endpoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      displayDenuncia = List<Denuncia>.from(json.decode(response).map((x) => Denuncia.fromJson(x)));
      notifyListeners();
    } finally {
      client.close();
    }
  }
}
