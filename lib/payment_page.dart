import 'package:flutter/material.dart';

import 'menu_widget.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Payment Page'),
          leading: MenuWidget(),
        ),
      );
}
