import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/product/components/body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      title: const Text(
        "Dashboard",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/notification.svg"))
      ],
    );
  }
}
