import 'dart:math';

import 'package:flutter/material.dart';
import 'package:correio_elegante/home_page.dart';
import 'package:correio_elegante/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://raw.githubusercontent.com/mariaalm20/correio-elegante-devchallenge/main/design/Pagina%20de%20Carregamento.png',
                  ),
                  fit: BoxFit.cover))),
    );
  }
}
