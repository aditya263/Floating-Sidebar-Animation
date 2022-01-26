import 'package:flutter/material.dart';
import 'package:flutter_sidebar_animation/ModelClass/menu_item.dart';
import 'package:flutter_sidebar_animation/menu_page.dart';
import 'package:flutter_sidebar_animation/payment_page.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePageState extends StatefulWidget {
  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  MenuItem currentItem = MenuItems.payment;

  @override
  Widget build(BuildContext context) => ZoomDrawer(
        style: DrawerStyle.Style1,
        menuScreen: MenuPage(
          currentItem: currentItem,
          onSelectedItem: (item) {
            setState(() => currentItem = item);
          },
        ),
        mainScreen: PaymentPage(),
      );
}
