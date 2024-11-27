/*import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final int id;
  final String name;

  const DetailTitle({super.key, required this.id, required this.name});

  @override
  /* Widget build(BuildContext context) {
    return Chip(backgroundColor: Colors.white,
      label: Text("${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(fontSize: 24, color: Colors.black),
      ),
      avatar: Chip(backgroundColor: Colors.white,
        label: Text("${this.id}",
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
      ),
    );
  }
}*/
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      label: Row(
        mainAxisSize: MainAxisSize.min,
        // Овој ред ќе се прилагоди на содржината
        children: [
          // Првиот текст (име)
          Text(
            "${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(fontSize: 24, color: Colors.black),
          ),
          const SizedBox(width: 8), // Размак помеѓу текстот и аватарот
          // Вториот Chip како аватар
          Chip(
            backgroundColor: Colors.blueGrey,
            // Поставете различна боја ако сакате
            label: Text(
              "ID = ${this.id}",
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  final int id;
  final String name;

  const DetailTitle({super.key, required this.id, required this.name});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(8),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "${name[0].toUpperCase()}${name.substring(1)}",
            style: const TextStyle(
              fontSize:20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 12),
          Chip(
            backgroundColor: Colors.blueGrey,
            label: Text(
              "ID = ${this.id}",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            avatar: Icon(Icons.tag, color: Colors.white, size: 16),
          ),
        ],
      ),
      shadowColor: Colors.black26,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
