import 'package:flutter/material.dart';
import 'package:flutter_sidebar_animation/menu_page.dart';
import 'package:flutter_sidebar_animation/payment_page.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomePageState extends StatefulWidget {
  @override
  State<HomePageState> createState() => _HomePageStateState();
}

class _HomePageStateState extends State<HomePageState> {
  @override
  Widget build(BuildContext context) => ZoomDrawer(
        menuScreen: MenuPage(),
        mainScreen: PaymentPage(),
      );
}
