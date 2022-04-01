import 'package:flutter/material.dart';
import 'package:garbage_movil/pages/crear_eventos.dart';
import 'package:garbage_movil/providers/Evento_Provaider.dart';
import 'package:provider/provider.dart';
import 'package:shaky_animated_listview/scroll_animator.dart';

import '../providers/Denuncia_Provider.dart';

class Consultar_eventos extends StatefulWidget {
  @override
  _Consultar_eventosState createState() => _Consultar_eventosState();
}

class _Consultar_eventosState extends State<Consultar_eventos> {

  @override
  Widget build(BuildContext context) {
    final eventoProvider = Provider.of<EventoProvider>(context);
    final evento = eventoProvider.displayEvento;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Regresar', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: AnimatedListView(
          padding: const EdgeInsets.all(15.0),
            duration: 100,
            extendedSpaceBetween: 30,
            spaceBetween: 10,
            children: List.generate(
                evento.length,
                (index) => Card(
                      elevation: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      shadowColor: Colors.black,
                      color: const Color.fromARGB(255, 216, 133, 163),
                      child: SizedBox(
                        height: 260,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                evento[index].nombredelEvento.toString().toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(),
                              Text(
                                evento[index].descripciondelEvento.toString().toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Divider(),
                              Text(
                                evento[index].consideracionesEspeciales.toString().toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Divider(),
                              Text(
                                evento[index].fechadelEvento.toString().toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Divider(),
                              Text(
                                evento[index].ndpersonasRequeridas.toString().toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ),
        ),
      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       Text(
      //         "Consultar eventos".toUpperCase(),
      //         style: TextStyle(
      //           fontSize: 22,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       const SizedBox(height: 30),
      //       TextButton(
      //         style: TextButton.styleFrom(
      //           primary: Colors.white,
      //           textStyle: const TextStyle(fontSize: 20),
      //         ),
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //               MaterialPageRoute(
      //                 builder: (context) => Crear_eventos (),
      //               ),
      //           );
      //         },
      //         child: const Text('Crear evento'),
      //       ),
      //       /*ListTile(
      //         contentPadding: EdgeInsets.all(0),
      //         leading: CircleAvatar(
      //           backgroundImage: NetworkImage('https://i.pravatar.cc/100'),
      //           backgroundColor: Colors.grey[300],
      //         ),
      //         title: Text(
      //           'Frederick Hemmings',
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 14,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         subtitle: Text(
      //           'Lead Instructor',
      //           style: TextStyle(
      //             color: Theme.of(context).primaryColor,
      //             fontSize: 12,
      //           ),
      //         ),
      //       ),*/
      //       Padding(
      //         padding: EdgeInsets.only(top: 15),
      //       ),
      //       Expanded(
      //         child: ListView.builder(
      //           itemCount: evento.length,
      //           shrinkWrap: true,
      //           itemBuilder: (BuildContext context, int index) {
      //             return Container(
      //               margin: EdgeInsets.only(bottom: 10),
      //               decoration: BoxDecoration(
      //                 color: Colors.white60,
      //                 borderRadius: BorderRadius.circular(5),
      //                 // boxShadow: [
      //                 //   BoxShadow(
      //                 //     color: Colors.grey,
      //                 //     offset: Offset(0, 0),
      //                 //     blurRadius: 5,
      //                 //   ),
      //                 // ],
      //               ),
      //               child: ListTile(
      //                 leading: Container(
      //                   padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
      //                   child: Text(
      //                     '$index',
      //                     style: TextStyle(
      //                       color: Theme.of(context).primaryColorDark,
      //                       fontSize: 18,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 ),
      //                 title: Text(
      //                   evento[index]
      //                       .nombredelEvento
      //                       .toString()
      //                       .toUpperCase(),
      //                   style: TextStyle(
      //                     color: Colors.black,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 subtitle: Text(
      //                   evento[index]
      //                       .fechadelEvento
      //                       .toString()
      //                       .toUpperCase(),
      //                   style: TextStyle(
      //                     color: Colors.grey,
      //                     fontSize: 14,
      //                   ),
      //                 ),
      //                 // onTap: () {
      //                 //   Navigator.push(
      //                 //     context,
      //                 //     MaterialPageRoute(
      //                 //       builder: (context) => MasDetallesDenuncia(denuncia.first),
      //                 //     ),
      //                 //   );
      //                 // },
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}