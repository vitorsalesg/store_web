import 'package:flutter/material.dart';

class ResponsiveRowColumn extends StatefulWidget {
  const ResponsiveRowColumn({Key? key}) : super(key: key);

  @override
  _ResponsiveRowColumnState createState() => _ResponsiveRowColumnState();
}

class _ResponsiveRowColumnState extends State<ResponsiveRowColumn> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsividade'),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.pink,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.purple,
                      )),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                      ))
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              ))
        ],
      ),
    );
  }
}
