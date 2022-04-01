import 'dart:io';

import 'package:flutter/material.dart';
import 'package:garbage_movil/models/denuncia.dart';
import 'package:garbage_movil/pages/crear_denuncias.dart';
import 'package:garbage_movil/pages/mas_detalles_denuncia.dart';
import 'package:garbage_movil/providers/Denuncia_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:shaky_animated_listview/scroll_animator.dart';

class Consultar_denuncias extends StatefulWidget {

  @override
  _Consultar_denunciasState createState() => _Consultar_denunciasState();
}

class _Consultar_denunciasState extends State<Consultar_denuncias> {
  
  @override
  Widget build(BuildContext context) {
    final denunciaProvider = Provider.of<DenunciaProvider>(context);
    final denuncia = denunciaProvider.displayDenuncia;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Regresar', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        actions: <Widget>[
          const Icon(Icons.add_sharp,
                color: Colors.black,),
          TextButton(
              style: TextButton.styleFrom(
                primary: Colors.black,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Crear_denuncia(),
                  ),
                );
              },
              child: const Text('Crear denuncia'),
          ),
        ],
      ),
      
      body: AnimatedListView(
          padding: const EdgeInsets.all(15.0),
            duration: 100,
            extendedSpaceBetween: 30,
            spaceBetween: 10,
            children: List.generate(
                denuncia.length,
                (index) => Card(
                      elevation: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      shadowColor: Colors.black,
                      color: const Color.fromARGB(240, 101, 93, 138),
                      child: SizedBox(
                        height: 490,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                denuncia[index].titulodeDenuncia.toString().toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(),
                              Text(
                                denuncia[index].motivodeDenuncia.toString().toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Divider(),
                              Text(
                                denuncia[index].fechadeDenuncia.toString().toUpperCase(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Divider(),
                              Image(
                                image: NetworkImage(denuncia[index].fotografiadelLugar),
                              ),
                              Divider(),
                              Text(
                                denuncia[index].ubicaciondeDenuncia.toString().toUpperCase(),
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
      //         "Consultar denuncias".toUpperCase(),
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
      //             MaterialPageRoute(
      //               builder: (context) => Crear_denuncia(),
      //             ),
      //           );
      //         },
      //         child: const Text('Crear denuncia'),
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
      //           itemCount: denuncia.length,
      //           shrinkWrap: true,
      //           itemBuilder: (context, index) {
      //             return Container(
      //               margin: EdgeInsets.only(bottom: 10),
      //               decoration: BoxDecoration(
      //                 color: Colors.white60,
      //                 borderRadius: BorderRadius.circular(5),
      //               ),
      //               // child: Column(
      //               //   children: <Widget>[
      //               //     Text(
      //               //       denuncia[index]
      //               //         .titulodeDenuncia.toString(),
      //               //         textAlign: TextAlign.left,
      //               //     ),
      //               //   ],
      //               // ),
      //               child: ListTile(
      //                 leading: Container(
      //                   padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
      //                   child: Text(
      //                     '$index',
      //                     style: TextStyle(
      //                       color: Theme.of(context).primaryColorDark,
      //                       fontSize: 22,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 ),
      //                 title: Text(
      //                   denuncia[index]
      //                       .titulodeDenuncia
      //                       .toString()
      //                       .toUpperCase(),
      //                   style: TextStyle(
      //                     color: Colors.black,
      //                     fontSize: 18,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 subtitle: Text(
      //                   denuncia[index]
      //                       .fechadeDenuncia
      //                       .toString()
      //                       .toUpperCase(),
      //                   style: TextStyle(
      //                     color: Colors.grey,
      //                     fontSize: 14,
      //                   ),
      //                 ),
      //                 onTap: () {
      //                   Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                       builder: (context) => MasDetallesDenuncia(denuncia.first),
      //                     ),
      //                   );
      //                 },
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
