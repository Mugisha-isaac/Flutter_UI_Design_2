import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {

  final Map<String,dynamic> productData;
  final double width;

  const ProductItem({ required this.productData, required this.width});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final height = width * 4/3;
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: width,
      height: height + 40,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}