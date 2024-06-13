import 'package:ecommerce_cap/screens/homescreen.dart';
import 'package:ecommerce_cap/screens/loginregistro.dart';
import 'package:ecommerce_cap/screens/productos.dart';
import 'package:ecommerce_cap/utils/constants.dart';
import 'package:ecommerce_cap/widgets/footer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Widget page = const HomeScreen();

    // Se selecciona que pagina mostrar
    switch (selectedIndex) {
      case 0:
        page = const HomeScreen();
        break;
      case 1:
        page = const Productos();
        break;
      case 4:
        page = LoginRegisterScreen();
        break;
      default:
        throw UnimplementedError("No widget for $selectedIndex");
    }
    return Scaffold(
      appBar: navBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            page,
            const Footer(),
          ],
        ),
      ),
    );
  }

  AppBar navBar(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Boton Logo
          botonNav(true, 0, "Emashop"),
          // Botones Nav Texto
          Row(
            children: [
              botonNav(false, 0, "Home"),
              botonNav(false, 1, "Productos"),
              botonNav(false, 0, "Categorias"),
            ],
          ),
          // Botones Nav Icono
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              botonIconNav(context, 0, Icons.search),
              botonIconNav(context, 0, Icons.shopping_cart),
              botonIconNav(context, 4, Icons.person),
            ],
          ),
        ],
      ),
    );
  }

  IconButton botonIconNav(BuildContext context, int index, IconData icono) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Icon(
        icono,
        color: Theme.of(context).colorScheme.primary,
      ),
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
    );
  }

  TextButton botonNav(bool isTitulo, int index, String titulo) {
    return TextButton(
      style: isTitulo
          ? ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            )
          : null,
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Text(
        "$titulo",
        style: isTitulo
            ? const TextStyle(
                fontSize: fontSizeTitulo,
              )
            : const TextStyle(
                fontSize: fontSizeSubtitulo,
              ),
      ),
    );
  }
}
