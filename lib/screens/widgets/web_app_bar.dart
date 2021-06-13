import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        'Store Web',
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.w600,
          fontSize: 22,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_rounded,
            color: Colors.green,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: () {},
            child: Text("Entrar"),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.green,
              primary: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: OutlinedButton(
            onPressed: () {},
            child: Text("Cadastrar"),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.green, width: 1),
              backgroundColor: Colors.white,
              primary: Colors.green,
            ),
          ),
        ),
      ],
      /*  title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text("SW", style: TextStyle(color: Colors.green)),
          ),
          Expanded(child: Container()),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_rounded)),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Cadastrar"),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              primary: Colors.black,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("Entrar"),
            style: OutlinedButton.styleFrom(
              side: BorderSide(width: .9, color: Colors.white),
              primary: Colors.white,
            ),
          )
        ],
      ), */
    );
  }
}
