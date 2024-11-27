import 'package:flutter/material.dart';

class DetailBackButton extends StatelessWidget {
  const DetailBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => Navigator.pop(context),
      tooltip: 'Share',
      backgroundColor: Colors.blueGrey,
      label: const Text("Back",  style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),),
      icon: const Icon(Icons.arrow_back, color: Colors.white,),
    );
  }
}
