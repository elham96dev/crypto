
import 'package:crypto_app/constant/color_constants.dart';
import 'package:crypto_app/widgets/custom_crypto_column.dart';
// ignore: unused_import
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';

class CryptoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final double openDay;
  final double highDay;
  final double lowDay;

  
  const CryptoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.openDay,
    required this.highDay,
    required this.lowDay,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 420,
      child: Card(
        color: darkGray90,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                color: gray10,
                size: 54,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
              style: TextStyle(
                color: gray10,
                fontSize: 38,
                fontWeight: FontWeight.w900,
                fontFamily: "crypto"
              ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                CustomCryptoColumn(
                  title: "High Day",
                  price: highDay,
                ),
                CustomCryptoColumn(
                  title: "Open Day",
                  price: openDay,
                ),
                CustomCryptoColumn(
                  title: "Low Day",
                  price: lowDay,
                ),
        ],
      ),
    ],
),
),
        ),
      );
}
}