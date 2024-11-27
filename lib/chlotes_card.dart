import 'package:flutter/material.dart';
import 'package:flutterlab1_215071/chlotes_model.dart';
import 'package:flutterlab1_215071/chlotes_card_data.dart';

class ChlotesCard extends StatelessWidget {
  final int id;
  final String name;
  final String image;
  final String description;
  final double price;

  const ChlotesCard({super.key, required this.id, required this.name, required this.image, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(0),
        enableFeedback: true,
        splashColor: Colors.teal[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Chlotes(id: id, name: name, img: image, desc: description, price: price))
        },
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 2), borderRadius: BorderRadius.circular(8)),
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.all(10.0),
          child: ChlotesCardData(image: image, name: name),
        ),
      ),
    );
  }
}