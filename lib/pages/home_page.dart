import 'package:flutter/material.dart';
import 'package:donnut_app_4sa/tabs/burger_tab.dart';
import 'package:donnut_app_4sa/tabs/donut_tab.dart';
import 'package:donnut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donnut_app_4sa/tabs/pizza_tab.dart';
import 'package:donnut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donnut_app_4sa/utils/my_tab.dart';
import 'package:donnut_app_4sa/utils/shopping_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(
      iconPath: 'lib/icons/donut.png',
      text: 'Donut',
    ),
    const MyTab(
      iconPath: 'lib/icons/burger.png',
      text: 'Burger',
    ),
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
      text: 'Smoothie',
    ),
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
      text: 'Pancakes',
    ),
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
      text: 'Pizza',
    ),
  ];

  // Carrito y total
  List<Map<String, dynamic>> cartItems = [];
  double total = 0;

  // Función para agregar un producto al carrito
  void addToCart(String name, double price) {
    setState(() {
      cartItems.add({
        'name': name,
        'price': price,
      });
      total += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 35),
          child: Column(
            children: <Widget>[
              // Texto principal
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Text(
                      "I want to ",
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text("Eat",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline))
                  ],
                ),
              ),
              // Pestañas (TabBar)
              TabBar(tabs: myTabs),

              // Contenido de pestañas (TabBarView)
              Expanded(
                child: TabBarView(
                  children: [
                    DonutTab(addToCart: addToCart),
                    BurgerTab(addToCart: addToCart),
                    SmoothieTab(addToCart: addToCart),
                    PanCakesTab(addToCart: addToCart),
                    PizzaTab(addToCart: addToCart),
                  ],
                ),
              ),

              // Carrito de compras
              ShoppingCart(
                items: cartItems,
                totalPrice: total,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
