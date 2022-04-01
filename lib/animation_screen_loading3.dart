// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:garbage_movil/pages/consultar_denuncias.dart';
import 'package:garbage_movil/pages/consultar_pois.dart';
import 'package:garbage_movil/screens/inicio_screen.dart';
import 'package:garbage_movil/screens/login_screen.dart';
import 'package:lottie/lottie.dart';

class Animated_screen_loading3 extends StatefulWidget {
  const Animated_screen_loading3 ({Key? key}) : super(key: key);

  @override
  State<Animated_screen_loading3> createState() => _animated_screen_loading3State();
}

class _animated_screen_loading3State extends State<Animated_screen_loading3>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  bool _isLoaded = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 80000),
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isLoaded = true;
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoaded
            ? Consultar_poi()
            : Lottie.network('https://assets7.lottiefiles.com/packages/lf20_ncqmkloh.json', controller: _controller,
                onLoaded: (comp) {
                _controller.duration = comp.duration;
                _controller.forward();
              }),
      ),
    );
  }

  /*Widget inicio(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 40, right: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("GARBAGE REPORT",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }*/
}
