import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_final/models/Cart.dart';
import 'package:mobile_final/models/Product.dart';
import 'package:mobile_final/screens/details/components/cart_counter.dart';

import '../../../constants.dart';

class AddToCart extends StatefulWidget {
  final Function addTx;
  AddToCart({Key key, @required this.product, this.addTx}) : super(key: key);

  final Product product;

  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  final List<Cart> _items = [];

  void _sumAdd(Product product) {
    widget.addTx(
     widget.product
    );
  }

  int  generateRandomNumber() {


    var random = new Random();

    print(random.nextInt(100));
    // Printing Random Number between 1 to 100 on Terminal Window.
    return random.nextInt(1000);

  }




  void _addNewTransaction(Product product, int count) {
    final newTx = Product(
      id: generateRandomNumber(),
      title: product.title,
      price: product.price,
      description: product.description,
      image: product.image,
    );

    final newCart = Cart(product: newTx, numOfItems: 1);

    if (demoCarts.map((e) => e.product.id == product.id) != null) {
      setState(() {
        demoCarts.add(newCart);
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          SizedBox(width: 0,),
          Expanded(
            child: SizedBox(
              height: 50,
              width: 150,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: widget.product.color,
                onPressed: () => _addNewTransaction(widget.product, 2),
                child: Text(
                  "Add to Cart".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
