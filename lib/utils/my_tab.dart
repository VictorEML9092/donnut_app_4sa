import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  // Ruta del archivo
  final String iconPath;
  final String text;

  const MyTab({super.key, required this.iconPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Contenedor solo con la imagen
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              iconPath,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 2), // Espacio entre la imagen y el texto
          // Texto fuera del contenedor
          Text(
            text,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
