import 'package:flutter/material.dart';
import 'package:flutter_sidebar_animation/ModelClass/menu_item.dart';
import 'package:flutter_sidebar_animation/menu_page.dart';
import 'package:flutter_sidebar_animation/payment_page.dart';
import 'package:flutter_sidebar_animation/promo_page.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePageState extends StatefulWidget {
  const HomePageState({Key? key}) : super(key: key);

  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  MenuItem currentItem = MenuItems.payment;

  @override
  Widget build(BuildContext context) => ZoomDrawer(
        style: DrawerStyle.Style1,
        borderRadius: 40,
        angle: -10,
        slideWidth: MediaQuery.of(context).size.width * 0.8,
        showShadow: true,
        backgroundColor: Colors.orangeAccent,
        menuScreen: Builder(
          builder: (context) => MenuPage(
            currentItem: currentItem,
            onSelectedItem: (item) {
              setState(() => currentItem = item);

              ZoomDrawer.of(context)!.close();
            },
          ),
        ),
        mainScreen: getScreen(),
      );

  Widget getScreen() {
    switch (currentItem) {
      case MenuItems.payment:
        return const PaymentPage();

      case MenuItems.promos:
        return const PromoPage();

      default:
        return const PaymentPage();
    }
  }
}
