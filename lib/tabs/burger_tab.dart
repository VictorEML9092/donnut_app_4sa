import 'package:donnut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  final Function(String, double) addToCart;

  BurgerTab({super.key, required this.addToCart});

  final List<List<dynamic>> donutsOnSale = [
    [
      "Bacon Feast",
      "Burger King",
      120,
      Colors.red,
      "lib/images/Burgers/Hamburguesa_Tocino.png"
    ],
    [
      "Cheese",
      "Burger King",
      100,
      Colors.red,
      "lib/images/Burgers/Hamburguesa_Cheese.png"
    ],
    [
      "Big Mac",
      "McDonald's",
      110,
      Colors.orange,
      "lib/images/Burgers/Hamburguesa_Mac.png"
    ],
    [
      "McChicken",
      "McDonald's",
      125,
      Colors.orange,
      "lib/images/Burgers/Hamburguesa_Pollo.png"
    ],
    [
      "Jack Daniel's",
      "Angry Angus",
      155,
      Colors.green,
      "lib/images/Burgers/Hamburguesa_Jack.png"
    ],
    [
      "Italian Burger",
      "Angry Angus",
      165,
      Colors.green,
      "lib/images/Burgers/Hamburguesa_Italian.png"
    ],
    [
      "Super Star",
      "Carl's Jr",
      170,
      Colors.blueGrey,
      "lib/images/Burgers/Hamburguesa_Star.png"
    ],
    [
      "Guacamole B.",
      "Carl's Jr",
      150,
      Colors.blueGrey,
      "lib/images/Burgers/Hamburguesa_Guacamole.png"
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
