/*import 'package:flutter/material.dart';
import 'package:garbage_movil/models/denuncia.dart';
import 'package:garbage_movil/models/evento.dart';
import 'package:garbage_movil/models/poi.dart';
import 'package:garbage_movil/pages/consultar_denuncias.dart';
import 'package:garbage_movil/pages/consultar_eventos.dart';

// ignore: camel_case_types
class Consultar_item_poi extends StatelessWidget {
  final POIS pois;

  const Consultar_item_poi(this.pois, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
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
                          highlightColor: Colors.white.withAlpha(50), 
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Consultar_eventos(),
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
                                      "Consultar poi's".toString().toUpperCase(),
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context).primaryColor,
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
                                        color: Colors.grey,
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
        decoration: _boxDecoration(),
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
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget _TextosDenuncia(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              denuncia.nombreDenuncia,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 3.0),
            IconButton(
              icon: Icon(
              Icons.accessibility_new_rounded,
              color: Theme.of(context).highlightColor,
              size: 15.0,
            ),
            onPressed:  () {
              Navigator.push(
                context,
                  MaterialPageRoute(
                    builder: (context) => Consultar_denuncias(),
                ),
            );
            },
        ),
            
            const SizedBox(
              width: 3.0,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Text(
              denuncia.descripcionDenuncia,
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ],
    );
  }

  Widget _Listicon(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, right: 10.0),
      child: Icon(
        Icons.list_rounded,
        color: Theme.of(context).highlightColor,
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: const Color.fromARGB(240, 101, 93, 138),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            offset: Offset(2.0, 2.0),
            blurRadius: 8.0,
          ),
        ],
      );
  }
}*/
