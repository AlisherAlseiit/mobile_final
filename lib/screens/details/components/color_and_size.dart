import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile_final/models/Product.dart';
import 'package:mobile_final/size_config.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Color'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  buildColorBox(
                    10,
                    color: Colors.purple,
                    isActive: product.id == 1 ? true : false,
                  ),
                  buildColorBox(
                    10,
                    color: Colors.orange,
                    isActive: product.id == 3 ? true : false,
                  ),
                  buildColorBox(
                    10,
                    color: kTextColor,
                    isActive: product.id == 2 || product.id == 4 ? true : false,
                  ),
                  buildColorBox(
                    10,
                    color: Colors.grey,
                    isActive:  product.id == 5 ? true : false,
                  ),
                  buildColorBox(
                    10,
                    color: Colors.yellow,
                    isActive:  product.id ==  6 ? true : false,
                  ),
                ],
              )
            ],
          ),
        ),

      ],
    );
  }
  Container buildColorBox(double defaultSize,
      {Color color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      // For  fixed value we can use cont for better performance
      padding: const EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
    );
  }
}

