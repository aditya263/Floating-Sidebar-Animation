import 'package:flutter/material.dart';

import 'menu_widget.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Promo Page'),
          leading: const MenuWidget(),
        ),
      );
}
