import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:garbage_movil/models/evento.dart';
import 'package:http/retry.dart';
import 'package:http/http.dart' as http;

class EventoProvider extends ChangeNotifier {
  final String _host = 'apigarbagereport.somee.com';
  // final Map<String, dynamic> _parameters = {'key' : ''};
  List<Evento> displayEvento = [];
  EventoProvider() {
    getEventos();
  }

  getEventos() async {
    const endpoint = '/api/Evento/Todos';
    final url = Uri.http(_host, endpoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      displayEvento = List<Evento>.from(json.decode(response).map((x) => Evento.fromJson(x)));
      notifyListeners();
    } finally {
      client.close();
    }
  }
}
