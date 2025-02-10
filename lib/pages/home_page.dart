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
        actions: [Icon(Icons.person)],
      ),
    );
  }
}
