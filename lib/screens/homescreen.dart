import 'package:ecommerce_cap/widgets/carrusel.dart';
import 'package:ecommerce_cap/widgets/secciones.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(),
        Carrusel(),
        Divider(),
        Secciones(titulo: "Marcas"),
        Divider(),
        Secciones(titulo: "Ultimo Lanzamiento"),
      ],
    );
  }
}
