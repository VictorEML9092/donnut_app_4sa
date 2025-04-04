import 'package:donnut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  final Function(String, double) addToCart;

  SmoothieTab({super.key, required this.addToCart});

  final List<List<dynamic>> donutsOnSale = [
    [
      "Mango a GoGo",
      "Jamba",
      40,
      Colors.green,
      "lib/images/Smoothies/Smoothie_Mango.png"
    ],
    [
      "Razzmatazz",
      "Jamba",
      45,
      Colors.green,
      "lib/images/Smoothies/Smoothie_Razz.png"
    ],
    [
      "Coco Colada",
      "Smoothie King",
      25,
      Colors.red,
      "lib/images/Smoothies/Smoothie_Coco.png"
    ],
    [
      "Berry Goji",
      "Smoothie King",
      30,
      Colors.red,
      "lib/images/Smoothies/Smoothie_Berry.png"
    ],
    [
      "Avocolada",
      "TropicalSmoothie Café",
      50,
      Colors.blue,
      "lib/images/Smoothies/Smoothie_Avo.png"
    ],
    [
      "Mocha MDS",
      "TropicalSmoothie Café",
      62,
      Colors.blue,
      "lib/images/Smoothies/Smoothie_Moka.png"
    ],
    [
      "Dragon Fruit",
      "Zumit",
      75,
      Colors.orange,
      "lib/images/Smoothies/Smoothie_Dragon.png"
    ],
    [
      "Delightful",
      "Zumit",
      70,
      Colors.orange,
      "lib/images/Smoothies/Smoothie_Deli.png"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.8,
      ),
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2].toString(),
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAddToCart: () {
            addToCart(
                donutsOnSale[index][0], donutsOnSale[index][2].toDouble());
          },
        );
      },
    );
  }
}
