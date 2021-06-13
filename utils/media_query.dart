import 'package:flutter/material.dart';

class MediaQueryScreen extends StatefulWidget {
  const MediaQueryScreen({Key? key}) : super(key: key);

  @override
  MediaQueryScreenState createState() => MediaQueryScreenState();
}

class MediaQueryScreenState extends State<MediaQueryScreen> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top;
    var alturaAppBar = AppBar().preferredSize.height;
    //var larguraItem = largura * 0.25;//100%
    var larguraItem = largura / 3; //500%

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsividade'),
      ),
      body: Row(
        children: [
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.red,
            child: Text('Responsividade'),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.black,
            child: Text('Responsividade'),
          ),
          Container(
            width: larguraItem,
            height: 200,
            color: Colors.yellow,
            child: Text('Responsividade'),
          )
        ],
      ),
    );
  }
}
