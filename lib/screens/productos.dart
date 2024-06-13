import 'package:ecommerce_cap/utils/constants.dart';
import 'package:flutter/material.dart';

class Productos extends StatefulWidget {
  const Productos({super.key});

  @override
  State<Productos> createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(80),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Productos",
                style: TextStyle(
                    fontSize: fontSizeTitulo,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ],
          ),
          const SizedBox(height: 50),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              // BACKEND
              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Cerrar"),
                        ),
                      ],
                      content: const CardDetalles(
                          nombre: "nombre",
                          descripcion: "descripcion",
                          imagen:
                              "https://www.foxcol.com/cdn/shop/files/gorra-de-beisbol-new-era-59-fifty-los-angeles-dodgers-100percent-original-foxcol-colombia-1.jpg?v=1698208253",
                          precio: "100"),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Text(
                      "New era",
                      style: TextStyle(
                          fontSize: fontSizeSubtitulo,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Image.network(
                      "https://www.foxcol.com/cdn/shop/files/gorra-de-beisbol-new-era-59-fifty-los-angeles-dodgers-100percent-original-foxcol-colombia-1.jpg?v=1698208253",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CardDetalles extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String imagen;
  final String precio;

  const CardDetalles({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.imagen,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5), // Color del sombreado
            blurRadius: 7, // Desenfoque del sombreado
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            "$nombre",
            style: TextStyle(
                fontSize: fontSizeSubtitulo,
                color: Theme.of(context).colorScheme.secondary),
          ),
          Text(
            "$descripcion",
            style: TextStyle(
                fontSize: fontSizeTexto,
                color: Theme.of(context).colorScheme.secondary),
          ),
          Image.network("$imagen", height: 300),
          Text(
            " \$ $precio",
            style: TextStyle(
                fontSize: fontSizeSubtitulo,
                color: Theme.of(context).colorScheme.secondary),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Agregar al Carrito",
              style: TextStyle(
                  fontSize: fontSizeSubtitulo,
                  color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ],
      ),
    );
  }
}
