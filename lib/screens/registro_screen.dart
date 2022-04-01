// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:garbage_movil/screens/inicio_screen.dart';
import 'login_screen.dart';

void register() {
  runApp(const Regsitro_screen());
}

class Regsitro_screen extends StatelessWidget {
  const Regsitro_screen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const _register(),
    );
  }
}
// ignore: camel_case_types
class _register extends StatefulWidget {
  const _register({ Key? key }) : super(key: key);

  @override
  State<_register> createState() => _registerSate();
}

// ignore: camel_case_types
class _registerSate extends State<_register> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
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
              const Text("AYÚDANOS A MEJORAR EL MUNDO REGISTRÁNDOTE", style: TextStyle(color: Colors.black), textAlign: TextAlign.center,),
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
                            const SizedBox(height: 10,),
            Flexible(
              child: TextField(
                controller: confirmpassword,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Confirmar contraseña"
                ),
                ),
            ),
              Container(
                
                margin: const EdgeInsets.only(top: 50),
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: FlatButton(
                  child: const Text ("Regístrate", style: TextStyle(color: Colors.white, fontSize: 20),),
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
                      builder: (context) => const Login_screen (),
                    ),
                );
              },
              
              child: const Text("¿Ya estás registrado? ¡Inicia Sesión!", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
              
          ],
          )
          
        ),
      ),
    );
  }
}