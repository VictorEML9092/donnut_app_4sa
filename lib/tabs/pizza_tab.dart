import 'package:donnut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(String, double) addToCart;

  PizzaTab({super.key, required this.addToCart});

  final List<List<dynamic>> donutsOnSale = [
    [
      "Hawaiana",
      "Domino's Pizza",
      210,
      Colors.blue,
      "lib/images/Pizzas/Pizza_Hawaiana.png"
    ],
    [
      "Mexican",
      "Domino's Pizza",
      235,
      Colors.blue,
      "lib/images/Pizzas/Pizza_Mexicana.png"
    ],
    [
      "Haw. Chiken",
      "Pizza Hut",
      250,
      Colors.red,
      "lib/images/Pizzas/Pizza_Cheesy.png"
    ],
    [
      "Cruchy Dips",
      "Pizza Hut",
      225,
      Colors.red,
      "lib/images/Pizzas/Pizza_Crunchy.png"
    ],
    [
      "Pepperoni",
      "Little Caesars",
      169,
      Colors.orange,
      "lib/images/Pizzas/Pizza_Pepperoni.png"
    ],
    [
      "Mushroom",
      "Little Caesars",
      182,
      Colors.orange,
      "lib/images/Pizzas/Pizza_Champiñon.png"
    ],
    [
      "Bacon",
      "Papa John's",
      169,
      Colors.green,
      "lib/images/Pizzas/Pizza_Tocino.png"
    ],
    [
      "Jalapeño",
      "Papa John's",
      145,
      Colors.green,
      "lib/images/Pizzas/Pizza_Jalapeño.png"
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
