import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // Ícono de la izquierda
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
      body: Column(
        children: <Widget>[
          //1. Texto principal (Text)
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
                        // Tamaño de letra
                        fontSize: 32,
                        // Negritas
                        fontWeight: FontWeight.bold,
                        //Subrayado
                        decoration: TextDecoration.underline))
              ],
            ),
          )
          //2. Pestañas (TabBar)
          //3. Contenido de pestañas (TabBarView)
          //4. Carrito (Cart)
        ],
      ),
    );
  }
}
