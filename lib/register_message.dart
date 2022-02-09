import 'dart:convert';

import 'package:correio_elegante/final_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterMessage extends StatefulWidget {
  const RegisterMessage({Key? key}) : super(key: key);

  @override
  _RegisterMessageState createState() => _RegisterMessageState();
}

class _RegisterMessageState extends State<RegisterMessage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _textController = TextEditingController();

  late String selectedObject;

  // Future<Map> _getWhatsapp() async {
  //   http.Response response;

  //   response = await http.get('https://graph.microsoft.com/v1.0/me/mailfolders/inbox/messages?$select=subject,from,receivedDateTime&$top=25&$orderby=receivedDateTime%20DESC');

  //   return json.decode(response.body);
  // }

  @override
  void initState() {
    selectedObject = "";
    super.initState();
  }

  void _saveFields() {
    _nameController.text = "";
    _emailController.text = "";
    _textController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
              child: Text(
                'Voce Gostaria De Se Indentificar?',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.pink, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Digite seu nome ou apelido!',
                  labelStyle:
                      const TextStyle(color: Colors.grey, fontSize: 18.0)),
              controller: _nameController,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Escolha uma Refeição A baixo!',
                style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: (GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  _buildItemMsg('assets/champagne.png'),
                  _buildItemMsg('assets/fast-food.png'),
                  _buildItemMsg('assets/french-fries.png'),
                  _buildItemMsg('assets/lollipop.png'),
                  _buildItemMsg('assets/beer.png'),
                  _buildItemMsg('assets/wine.png')
                ],
              )),
            ),
            Text(
              'Email',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[500],
                  fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.pink, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0)),
                  labelText: 'Digite o email dele ou dela',
                  labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0)),
              controller: _emailController,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Surpreenda',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.pink, width: 2),
                      borderRadius: BorderRadius.circular(25)),
                  labelText:
                      'Digite uma frase ou algo elegante para seu/sua amado(a)',
                  labelStyle: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0)),
              controller: _textController,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DonePage(),
                ));
              },
              child: const Text('Enviar Correio!'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.pinkAccent),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildItemMsg(String url) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedObject = url;
        });
      },
      child: Image.asset(
        url,
        color: selectedObject == url ? Colors.grey : null,
      ),
    );
  }
}
