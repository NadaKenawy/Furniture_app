class Product {
  final int id, price;
  final String title, description, image;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.description,
      required this.image});
}

List<Product> products = [
  Product(
    id: 1,
    price: 560,
    title: "Classic Leather Arm Chair",
    image: "assets/images/Item_1.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 680,
    title: "Poppy Plastic Tub Chair",
    image: "assets/images/Item_2.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    price: 390,
    title: "Bar Stool Chair",
    image: "assets/images/Item_3.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 10,
    price: 470,
    title: "Dining room Seat",
    image: "assets/images/item_4.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 11,
    price: 360,
    title: "Chair Living room",
    image: "assets/images/item_5.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 12,
    price: 520,
    title: "Couch Armrest Living room",
    image: "assets/images/item_6.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 13,
    price: 290,
    title: "Barcelona chair Office",
    image: "assets/images/item_7.png",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];
