import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:garbage_movil/models/poi.dart';
import 'package:http/retry.dart';
import 'package:http/http.dart' as http;

class POIProvider extends ChangeNotifier {
  final String _host = 'apigarbagereport.somee.com';
  // final Map<String, dynamic> _parameters = {'key' : ''};
  List<Poi> displayPoi = [];
  POIProvider() {
    getPoi();
  }

  getPoi() async {
    const endpoint = '/api/Poi/Todos';
    final url = Uri.http(_host, endpoint);
    final client = RetryClient(http.Client());

    try {
      final response = await client.read(url);
      displayPoi = List<Poi>.from(json.decode(response).map((x) => Poi.fromJson(x)));
      notifyListeners();
    } finally {
      client.close();
    }
  }
}
