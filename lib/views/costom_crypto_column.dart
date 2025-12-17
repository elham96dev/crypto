
import 'package:crypto_app/constant/color_constants.dart';
import 'package:flutter/material.dart';

class CustomCryptoColumn extends StatelessWidget {
  final String title;
  final double price;
  const CustomCryptoColumn({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
        style: TextStyle(
         color: gray10,
         fontSize: 28,
         fontWeight: FontWeight.w900,
         fontFamily: "crypto2"
        ),
      ),
      SizedBox(
        height: 8.0,
      ),
        Text(
          price.toString(),
         style: TextStyle(
          color: gray10,
          fontSize: 20,
          fontWeight: FontWeight.w900,
          fontFamily: "crypto"
        ),
      )
    ],
  );
  }
}