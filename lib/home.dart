import 'package:flutter/material.dart';

import '../chlotes_model.dart';
import '../chlotes_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Chlotes> chlotes = <Chlotes>[];

  void addChlotes() {
  setState(() {
  chlotes.add(Chlotes(id:1000, name: "Logo T-Shirt", img: 'https://tommy-europe.scene7.com/is/image/TommyEurope/MW0MW11465_BAS_alternate4?\$b2c_updp_m_mainImage_1920\$', desc: "Very beautiful T-Shirt with extra price!", price: 25.00),);
  chlotes.add(Chlotes(id:1002, name: "Men's T-shirts",img: 'https://gr-assets.tommy.com/media/catalog/product/cache/af8a302a0c611223e8e7445f202173b3/D/M/DM0DM04411002_IM-F1.jpg', desc: "Very beautiful T-Shirt with extra price!", price: 30.00),);
  chlotes.add(Chlotes(id:1003, name: "White Man's Sweater",img: 'https://mobile.yoox.com/images/items/14/14426284JM_14_f.jpg?impolicy=crop&width=387&height=490', desc: "Very beautiful Sweater with extra price!", price: 100.00),);
  chlotes.add(Chlotes(id:1004, name: "Essential Man's Sweater",img: 'https://cdn.plutosport.com/a/ProductMedia/Tommy%20Hilfiger/P.TH.SWE.3995/MW0MW36347-P92_g4.jpg?profile=product_page_image_medium&33', desc: "Very beautiful Sweater with extra price!",  price: 110.00),);
  chlotes.add(Chlotes(id:1005, name: "Blue Slim Jeans",img: 'https://tommy-europe.scene7.com/is/image/TommyEurope/DM0DM20174_1A4_alternate4?\$b2c_updp_m_mainImage_1920\$', desc: "Very beautiful Jeans with extra price!", price: 200.00),);
  chlotes.add(Chlotes(id:1006, name: "Dark Blue Jeans",img: 'https://gr-assets.tommy.com/media/catalog/product/cache/af8a302a0c611223e8e7445f202173b3/D/M/DM0DM095481BK_FL-F1.jpg', desc: "Very beautiful Jeans with extra price!", price: 150.00),);
  chlotes.add(Chlotes(id:1007, name: "White Shoes",img: 'https://slimages.macysassets.com/is/image/MCY/products/3/optimized/18423823_fpx.tif?op_sharpen=1&wid=700&hei=855&fit=fit,1', desc: "Very beautiful Shoes with extra price!", price: 190.00),);
  chlotes.add(Chlotes(id:1008, name: "Brown Shoes",img: 'https://slimages.macysassets.com/is/image/MCY/products/2/optimized/18423822_fpx.tif?qlt=80,0&resMode=sharp2&op_usm=1.75,0.3,2,0&fmt=jpeg&wid=342&hei=417', desc: "Very beautiful Shoes with extra price!", price: 140.00),);
  });
  }

  @override
  void initState() {
    super.initState();
    addChlotes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.teal,
        title: const Text("215071", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ChlotesGrid(chlotes: chlotes),
    );
  }
}