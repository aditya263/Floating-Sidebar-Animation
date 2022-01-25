import 'package:flutter/material.dart';

import 'ModelClass/menu_item.dart';

class MenuItems {
  static const payment = MenuItem('Payments', Icons.payment);
  static const promos = MenuItem('Promo', Icons.card_giftcard);
  static const notification = MenuItem('Notification', Icons.notifications);
  static const help = MenuItem('Help', Icons.help);
  static const aboutUs = MenuItem('About Us', Icons.info_outline);
  static const rateUs = MenuItem('Rate Us', Icons.star_border);

  static const all = <MenuItem>[
    payment,
    promos,
    notification,
    help,
    aboutUs,
    rateUs,
  ];
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              ...MenuItems.all.map(buildMenuItem).toList(),
              Spacer(flex: 2),
            ],
          ),
        ),
      );

  Widget buildMenuItem(MenuItem item) => ListTile(
        minLeadingWidth: 20,
        leading: Icon(item.icon),
        title: Text(item.title),
        onTap: () {},
      );
}
