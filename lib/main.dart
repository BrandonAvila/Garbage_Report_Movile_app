// ignore_for_file: unused_import, deprecated_member_use
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:garbage_movil/animation_screen.dart';
import 'package:garbage_movil/pages/crear_denuncias.dart';
import 'package:garbage_movil/pages/consultar_denuncias.dart';
import 'package:garbage_movil/providers/Denuncia_provider.dart';
import 'package:garbage_movil/providers/Evento_Provaider.dart';
import 'package:garbage_movil/providers/POI_Provider.dart';
import 'package:garbage_movil/screens/inicio_screen.dart';
import 'package:garbage_movil/screens/login_screen.dart';
import 'package:garbage_movil/pages/google_map_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback = ((cert, host, port) => true);
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HttpOverrides.global = MyHttpOverrides();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DenunciaProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (context) => EventoProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (context) => POIProvider(),
          lazy: false,
        ),
      ],
      child: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Garbage - Report',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: const Color.fromARGB(255, 201, 129, 230),
        accentColor: Colors.white,
      ),
      home: const Animated_screen(),
    );
  }
}
