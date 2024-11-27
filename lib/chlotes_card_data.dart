import 'package:flutter/material.dart';

class ChlotesCardData extends StatelessWidget {
  final String image;
  final String name;

  const ChlotesCardData({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Image.network(image, fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text("${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 18, color: Colors.blueGrey),
        ),
      ],
    );
  }
}