import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Wireless Controller",
      price: 64,
      description: "Wireless Controller for PS4",
      image: "assets/images/ps4_console_blue_1.png",
      color: Colors.deepPurple),
  Product(
      id: 2,
      title: "Nike Sport White",
      price: 50,
      description: someText,
      image: "assets/images/shoes2.png",
      color: Colors.grey),
  Product(
      id: 3,
      title: "T-shirt White",
      price: 35,
      description: someText,
      image: "assets/images/tshirt.png",
      color: Colors.orange),
  Product(
      id: 4,
      title: "Logitexh Head",
      price: 20,
      description: someText,
      image: "assets/images/wireless headset.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Wireless Controller - White",
      price: 36,
      description: "Wireless Controller for PS4 ",
      image: "assets/images/Image Popular Product 1.png",
      color: Colors.blue),
  Product(
    id: 6,
    title: "T-shirt Yellow",
    price: 25,
    description: someText,
    image: "assets/images/Image Popular Product 3.png",
    color: Colors.yellow,
  ),
];

String someText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";