import 'package:correio_elegante/splash.dart';
import 'package:flutter/material.dart';

class DonePage extends StatefulWidget {
  const DonePage({Key? key}) : super(key: key);

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  List _emailList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Splash()));
                    },
                    icon: Icon(Icons.keyboard_return_rounded)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Icon(
                  Icons.done_all_sharp,
                  color: Colors.green,
                  size: 70.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(40.0),
                child: Text(
                  'Seu Correio Foi Enviado Com Sucesso!',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0),
                ),
              ),
              Image(
                image: AssetImage('assets/Logo.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
