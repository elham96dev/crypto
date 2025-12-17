
import 'package:crypto_app/constant/color_constants.dart';
import 'package:flutter/material.dart';

class CryptoListTile extends StatelessWidget {
  final String title;
  final double price;
  final double medianPrice;
  

  const CryptoListTile({
    super.key,
    required this.title,
    required this.price,
    required this.medianPrice,
    
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.0),
        child: ListTile(
          leading: Icon(
            Icons.history,
            color: black103,
            size: 38,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: black103,
              fontFamily: "crypto2",
              fontSize: 24,
            ),
          ),
          subtitle: Text(
            "$medianPrice \$",
            style: TextStyle(
              fontFamily: "crypto2",
              color: darkGray96,
              fontSize: 16,
            ),
          ),
          trailing: Text(
            "$price \$",
            style: TextStyle(
              fontFamily: "crypto2",
              color: black103,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}