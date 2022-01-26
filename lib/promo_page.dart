import 'package:flutter/material.dart';

import 'menu_widget.dart';

class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: const Text('Promo Page'),
      leading: MenuWidget(),
    ),
  );
}
