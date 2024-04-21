import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  
  final Product? product;
  const DetailsScreen({super.key, this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: builAppBar(context),
      body:  Body(product: product,),
    );
  }

  AppBar builAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(left: kDefaultPadding),
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: const Text(
        'BACK',
        style: TextStyle(fontSize: 15),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/cart_with_item.svg'))
      ],
    );
  }
}
