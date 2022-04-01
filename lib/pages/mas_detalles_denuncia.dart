import 'package:flutter/material.dart';
import 'package:garbage_movil/models/denuncia.dart';
import 'package:garbage_movil/pages/crear_denuncias.dart';
import 'package:garbage_movil/providers/Denuncia_provider.dart';
import 'package:provider/provider.dart';

class MasDetallesDenuncia extends StatelessWidget {
  final Denuncia denuncia;
  const MasDetallesDenuncia(this.denuncia, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            denuncia.titulodeDenuncia.toString(),
            textAlign: TextAlign.left,
            style: const TextStyle (
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15)
            ),
          Text(
            denuncia.motivodeDenuncia.toString(),
            textAlign: TextAlign.left,
            style: const TextStyle (
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15)
            ),
          Text(
            denuncia.fechadeDenuncia.toString(),
            textAlign: TextAlign.left,
            style: const TextStyle (
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15)
            ),
          Text(
            denuncia.fotografiadelLugar.toString(),
            textAlign: TextAlign.left,
            style: const TextStyle (
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15)
            ),
          Text(
            denuncia.ubicaciondeDenuncia.toString(),
            textAlign: TextAlign.left,
            style: const TextStyle (
              fontSize: 15,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15)
            ),
        ],
      ),
      
      // child: ListTile(
      //   leading: Container(
      //     padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
      //     child: Text(
      //       '$index',
      //       style: TextStyle(
      //         color: Theme.of(context).primaryColorDark,
      //         fontSize: 22,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //   ),
      //   title: Text(
      //     denuncia.titulodeDenuncia.toString().toUpperCase(),
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 18,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   subtitle: Text(
      //     denuncia.fechadeDenuncia.toString().toUpperCase(),
      //     style: TextStyle(
      //       color: Colors.grey,
      //       fontSize: 14,
      //     ),
      //   ),
      //   onTap: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => Crear_denuncia(),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
