import 'package:correio_elegante/register_message.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade400,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipOval(
              child: Container(
                color: Colors.white,
                width: 350.0,
                height: 450.0,
                child: SingleChildScrollView(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      _buildItem('assets/beer.png'),
                      _buildItem('assets/lollipop.png'),
                      _buildItem('assets/wine.png'),
                      _buildItem('assets/cheese.png'),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Text('Surpreenda seu amor!',
                  style: TextStyle(
                      fontSize: 35.0,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800])),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'envie mensagens e presentes incriveis!!',
                style: TextStyle(
                    fontSize: 15.0,
                    fontStyle: FontStyle.normal,
                    color: Colors.grey[250],
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegisterMessage()));
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.pinkAccent)),
              child: Text('Começar!!'),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildItem(String url) {
  return Container(
    child: Image.asset(
      url,
    ),
  );
}
