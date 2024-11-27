
import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final int id;
  final String desc;
  final double price;

  const DetailData({super.key, required this.id, required this.desc, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 500,
      ),
      decoration: BoxDecoration(
        color: Colors.white,  // Позадинска боја
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Description for the product: \n" + desc,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.grey.withOpacity(0.5),
                    offset: Offset(1,1),
                  ),
                ],
              ),
              textAlign: TextAlign.center,            ),
            SizedBox(height: 20),
            Text(
              '\$${price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.green,
                letterSpacing: 1.2,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
              },
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
