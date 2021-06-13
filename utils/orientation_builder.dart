import 'package:flutter/material.dart';

class OrientationScreen extends StatefulWidget {
  const OrientationScreen({Key? key}) : super(key: key);

  @override
  _OrientationScreenState createState() => _OrientationScreenState();
}

class _OrientationScreenState extends State<OrientationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientação'),
      ),
      body: OrientationBuilder(
        builder: (context, orientacao) {
          return GridView.count(
            crossAxisCount: orientacao == Orientation.portrait ? 2 : 4,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.orange,
              ),
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.purple,
              ),
              Container(
                color: Colors.yellow,
              ),
            ],
          );
        },
      ),
    );
  }
}
