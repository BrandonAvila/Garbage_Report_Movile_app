// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:garbage_movil/components/consultar_item_denuncia.dart';
import 'package:garbage_movil/components/consultar_item_evento.dart';
import 'package:garbage_movil/components/consultar_item_poi.dart';
import 'registro_screen.dart';
import 'package:garbage_movil/main.dart';
import 'package:garbage_movil/screens/inicio_screen.dart';

void login() {
  runApp(const Login_screen());
}

// ignore: camel_case_types
class Login_screen extends StatelessWidget {
  const Login_screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const _login(),
    );
  }
}
// ignore: camel_case_types
class _login extends StatefulWidget {
  const _login({ Key? key }) : super(key: key);

  @override
  State<_login> createState() => __loginState();
}

// ignore: camel_case_types
class __loginState extends State<_login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.only(left: 40, right: 40),
        child: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("GARBAGE REPORT", style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              const SizedBox(height: 30),
              const Text("HACIENDO DEL MUNDO UN LUGAR MEJOR", style: TextStyle(color: Colors.black),),
              const SizedBox(height: 20,),
            Flexible(
              child: TextField(
                controller: email,
                decoration: const InputDecoration(
                  hintText: "Usuario"
                ),
                ),
            ),
              const SizedBox(height: 10,),
            Flexible(
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Contraseña"
                ),
                ),
            ),
              Container(
                
                margin: const EdgeInsets.only(top: 50),
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: FlatButton(
                  child: const Text ("Iniciar sesión", style: TextStyle(color: Colors.white, fontSize: 20),),
                  onPressed: () {
                Navigator.push(
                  context,
                    MaterialPageRoute(
                      builder: (context) => Inicio_screen (),
                    ),
                );
              },
                ),
              ),
              const SizedBox(height: 30),
              
              TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                    MaterialPageRoute(
                      builder: (context) => const Regsitro_screen (),
                    ),
                );
              },
              
              child: const Text("¿No tienes cuenta? ¡Regístrate!", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
              
          ],
          )
          
        ),
      ),
    );
  }
}