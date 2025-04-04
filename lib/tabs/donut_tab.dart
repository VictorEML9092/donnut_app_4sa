import 'package:donnut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(String, double) addToCart;

  DonutTab({super.key, required this.addToCart});

  final List<List<dynamic>> donutsOnSale = [
    [
      "Sugared",
      "Krispy Kreme",
      20,
      Colors.blue,
      "lib/images/Donuts/Dona_Azucarada.png"
    ],
    [
      "Maple",
      "Krispy Kreme",
      30,
      Colors.blue,
      "lib/images/Donuts/Dona_Maple.png"
    ],
    [
      "Strawberry",
      "Cantarella´s Donuts",
      25,
      Colors.red,
      "lib/images/Donuts/Dona_Fresa.png"
    ],
    [
      "Vanilla",
      "Cantarella´s Donuts",
      24,
      Colors.red,
      "lib/images/Donuts/Dona_Vainilla.png"
    ],
    [
      "Grape Ape",
      "Pandy Donuts",
      32,
      Colors.purple,
      "lib/images/Donuts/Dona_Uva.png"
    ],
    [
      "Mocha",
      "Pandy Donuts",
      35,
      Colors.purple,
      "lib/images/Donuts/Dona_Moka.png"
    ],
    [
      "Choco",
      "Donkin Donuts",
      27,
      Colors.brown,
      "lib/images/Donuts/Dona_Choco.png"
    ],
    [
      "Oranje",
      "Donkin Donuts",
      33,
      Colors.brown,
      "lib/images/Donuts/Dona_Naranja.png"
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
