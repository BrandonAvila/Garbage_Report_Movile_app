import 'package:flutter/material.dart';
import 'package:garbage_movil/animation_screen_loading2.dart';
import 'package:garbage_movil/animation_screen_loading3.dart';
import 'package:garbage_movil/pages/consultar_denuncias.dart';
import 'package:garbage_movil/pages/consultar_eventos.dart';
import 'package:garbage_movil/pages/consultar_pois.dart';
import 'package:garbage_movil/screens/login_screen.dart';

import '../animation_screen_loading.dart';

class Inicio_screen extends StatefulWidget {
  @override
  _Inicio_screenState createState() => _Inicio_screenState();
}

class _Inicio_screenState extends State<Inicio_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 120, 151, 171),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Garbage Report'.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        // actions: <Widget>[
        //   IconButton(
        //     // ignore: prefer_const_constructors
        //     icon: Icon(
        //       Icons.logout_outlined,
        //       color: Colors.black,
        //     ),
        //     onPressed: () => showDialog<String>(
        //       context: context,
        //       builder: (BuildContext context) => AlertDialog(
        //         title: const Text('Estas a punto de cerrar sesion'),
        //         content: const Text('¿Estas seguro?'),
        //         actions: <Widget>[
        //           TextButton(
        //             onPressed: () => Navigator.pop(context, 'Cancel'),
        //             child: const Text('No'),
        //           ),
        //           TextButton(
        //             onPressed: () => Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => const Login_screen(),
        //               ),
        //             ),
        //             child: const Text('Si'),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        //   // InkWell(
        //   //   child: Container(
        //   //     margin: const EdgeInsets.all(6),
        //   //     child: CircleAvatar(
        //   //       backgroundImage: const NetworkImage(
        //   //           'https://i.postimg.cc/rFXvLtVD/Brandon.jpg'),
        //   //       backgroundColor: Colors.grey[300],
        //   //     ),
        //   //   ),
        //   // ),
        // ],
      ),

      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Seccion de consultas'.toUpperCase().toString(),
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              _Denuncias(context),
              _Evento(context),
              _POIS(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _Denuncias(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            child: InkWell(
              highlightColor: const Color.fromARGB(240, 101, 93, 138),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Animated_screen_loading(),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/img/0.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Consultar denuncias'.toString().toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColorDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'Denuncias de los ciudadanos'
                              .toString()
                              .toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

        /*decoration: _boxDecoration(),
        height: 200.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: <Widget>[
                  _TextosDenuncia(context)
                  ],
              ),
            ),
            _Listicon(context),
          ],
        ),*/
      ),
    );
  }

  Widget _Evento(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            child: InkWell(
              highlightColor: Color.fromARGB(255, 216, 133, 163),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Animated_screen_loading2(),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/img/2.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Consultar evento'.toString().toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColorDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'Eventos organizados por Pro-Natura'
                              .toString()
                              .toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        /*decoration: _boxDecoration(),
        height: 200.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: <Widget>[
                  _TextosDenuncia(context)
                  ],
              ),
            ),
            _Listicon(context),
          ],
        ),*/
      ),
    );
  }

  Widget _POIS(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            child: InkWell(
              highlightColor: Color.fromARGB(255, 253, 206, 185),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Animated_screen_loading3(),
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/img/3.jpg',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Consultar poi's".toString().toUpperCase(),
                          style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColorDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5),
                        ),
                        Text(
                          'Puntos de interes'.toString().toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        /*decoration: _boxDecoration(),
        height: 200.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: <Widget>[
                  _TextosDenuncia(context)
                  ],
              ),
            ),
            _Listicon(context),
          ],
        ),*/
      ),
    );
  }
}
