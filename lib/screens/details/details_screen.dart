import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_final/constants.dart';
import 'package:mobile_final/models/Cart.dart';
import 'package:mobile_final/models/Product.dart';
import 'package:mobile_final/screens/cart/cart_screen.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/arrow-long-left.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [

        InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () => Navigator.push(context,
                   new MaterialPageRoute(builder: (context) => new CartScreen())),
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: product.color,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset("assets/icons/bag.svg", color: Colors.white,),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: product.color,
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white),
                  ),
                  child: Center(
                    child: Text(
                      '${demoCarts.length}',
                      style: TextStyle(
                        fontSize: 10,
                        height: 1,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 15,),
      ],
    );
  }
}
