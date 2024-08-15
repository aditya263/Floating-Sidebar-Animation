import 'package:flutter/material.dart';

import 'menu_widget.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Payment Page'),
          leading: const MenuWidget(),
        ),
      );
}
