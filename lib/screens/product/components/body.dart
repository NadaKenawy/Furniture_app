import 'package:flutter/material.dart';
import 'package:furniture_app/components/search_box.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/screens/details/details_screen.dart';
import 'package:furniture_app/screens/product/components/category_list.dart';
import 'package:furniture_app/screens/product/components/product_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          const CategoryList(),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) => ProductCard(
                  product: products[index],
                  itemIndex: index,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
