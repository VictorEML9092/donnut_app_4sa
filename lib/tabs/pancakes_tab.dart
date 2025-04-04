import 'package:donnut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PanCakesTab extends StatelessWidget {
  final Function(String, double) addToCart;

  PanCakesTab({super.key, required this.addToCart});

  final List<List<dynamic>> donutsOnSale = [
    [
      "Apple",
      "Denny's",
      99,
      Colors.blue,
      "lib/images/Pancakes/Pancake_Manzana.png"
    ],
    [
      "Ricotta",
      "Denny's",
      89,
      Colors.blue,
      "lib/images/Pancakes/Pancake_Ricotta.png"
    ],
    [
      "Banana",
      "Pancake House",
      100,
      Colors.red,
      "lib/images/Pancakes/Pancake_Banana.png"
    ],
    [
      "Pumpkin",
      "Pancake House",
      105,
      Colors.red,
      "lib/images/Pancakes/Pancake_Calabaza.png"
    ],
    [
      "Oatmeal",
      " Magnolia Bakery",
      85,
      Colors.purple,
      "lib/images/Pancakes/Pancake_Avena.png"
    ],
    [
      "Coco",
      " Magnolia Bakery",
      107,
      Colors.purple,
      "lib/images/Pancakes/Pancake_Coco.png"
    ],
    [
      "Choco",
      "Panera Bread",
      110,
      Colors.brown,
      "lib/images/Pancakes/Pancake_Choco.png"
    ],
    [
      "Almond",
      "Panera Bread",
      115,
      Colors.brown,
      "lib/images/Pancakes/Pancake_Almendra.png"
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
