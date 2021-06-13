import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatefulWidget {
  const LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  _LayoutBuilderScreenState createState() => _LayoutBuilderScreenState();
}

class _LayoutBuilderScreenState extends State<LayoutBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraint) {
            var largura = constraint.maxWidth;

            if (largura < 600) {
              return Text("Celulares");
            } else if (largura < 960) {
              return Text("Celulares & Tablets");
            } else {
              return Text("Telas maiores");
            }
          },
        ),
      ),
    );
  }
}
