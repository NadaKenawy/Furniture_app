import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/screens/details/components/add_to_cart.dart';
import 'package:furniture_app/screens/details/components/list_of_colors.dart';
import 'package:furniture_app/screens/details/components/product_image.dart';

class Body extends StatelessWidget {
  final Product? product;

  const Body({super.key, this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              decoration: const BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Hero(
                      tag: '${product!.id}',
                      child: ProductPoster(
                        size: size,
                        image: product!.image,
                      ),
                    ),
                  ),
                  const ListOfColors(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product!.title,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "${product!.price} \$",
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: kSecondaryColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: kDefaultPadding / 2),
                    child: Text(
                      product!.description,
                      style: const TextStyle(color: kTextLightColor),
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  )
                ],
              ),
            ),
            const AddToCart()
          ],
        ),
      ),
    );
  }
}
