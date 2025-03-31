import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutStore;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;

  const DonutTile(
      {super.key,
      required this.imageName,
      required this.donutColor,
      required this.donutPrice,
      required this.donutFlavor,
      required this.donutStore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //color: donutColor[50],
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              // Alinea el precio a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text("\$$donutPrice",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: donutColor[800],
                      )),
                ),
              ],
            ),
            // Donut orice
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            // Donut flavor text
            Text(donutFlavor,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: donutColor)),
            const SizedBox(
              height: 15,
            ),
            Text(donutStore, style: TextStyle(color: Colors.grey)),
            // Icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: Row(
                // Alinea el icono a la izquierda
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                    iconSize: 40,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Add',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
