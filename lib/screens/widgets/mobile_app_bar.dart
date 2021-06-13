import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

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
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart_rounded,
            color: Colors.green,
          ),
        ),
        PopupMenuButton(
          icon: Icon(Icons.more_vert_outlined, color: Colors.green),
          itemBuilder: (_) => <PopupMenuItem<String>>[
            PopupMenuItem<String>(
              child: const Text('Cadastrar'),
              value: 'Cadastrar',
            ),
            PopupMenuItem<String>(
              child: const Text('Entrar'),
              value: 'Entrar',
            ),
          ],
          onSelected: (_) {},
        ),
      ],
    );
  }
}
