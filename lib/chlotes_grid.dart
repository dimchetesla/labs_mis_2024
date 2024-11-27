import 'package:flutter/material.dart';
import 'package:flutterlab1_215071/chlotes_model.dart';
import 'package:flutterlab1_215071/chlotes_card.dart';

class ChlotesGrid extends StatefulWidget {
  final List<Chlotes> chlotes;
  const ChlotesGrid({super.key, required this.chlotes});
  @override
  _ChlotesGridState createState() => _ChlotesGridState();
}
class _ChlotesGridState extends State<ChlotesGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.chlotes.map((chlotes) =>
          ChlotesCard(id: chlotes.id, name: chlotes.name, image: chlotes.img, description: chlotes.desc, price: chlotes.price),
      ).toList(),
    );
  }
}