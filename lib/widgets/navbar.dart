import 'package:ecommerce_cap/utils/constants.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  const NavBar({
    super.key,
  });

  @override
  State<NavBar> createState() => _NavBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Boton Logo
          TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: () {},
            child: const Text(
              "Emas Shop",
              style: TextStyle(
                fontSize: fontSizeTitulo,
              ),
            ),
          ),
          // Botones Nav Texto
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Home",
                  style: TextStyle(fontSize: fontSizeSubtitulo),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Productos",
                  style: TextStyle(fontSize: fontSizeSubtitulo),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Categorias",
                  style: TextStyle(fontSize: fontSizeSubtitulo),
                ),
              ),
            ],
          ),
          // Botones Nav Icono
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).colorScheme.primary,
                ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Theme.of(context).colorScheme.primary,
                ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Theme.of(context).colorScheme.primary,
                ),
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
