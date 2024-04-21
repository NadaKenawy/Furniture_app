import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: 18,
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          ),
          const Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(),
          ElevatedButton.icon(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/shopping-bag.svg"),
            label: const Text(
              "Add To Cart",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: kSecondaryColor,
            ),
          )
        ],
      ),
    );
  }
}
