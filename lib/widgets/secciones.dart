import 'package:ecommerce_cap/utils/constants.dart';
import 'package:flutter/material.dart';

class Secciones extends StatelessWidget {
  final String titulo;
  const Secciones({
    super.key,
    required this.titulo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(80),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "$titulo",
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
                crossAxisCount: 3, crossAxisSpacing: 20, mainAxisSpacing: 20),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              // BACKEND
              return Column(
                children: [
                  Text(
                    "New era",
                    style: TextStyle(
                        fontSize: fontSizeSubtitulo,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  Image.network(
                      "https://www.foxcol.com/cdn/shop/files/gorra-de-beisbol-new-era-59-fifty-los-angeles-dodgers-100percent-original-foxcol-colombia-1.jpg?v=1698208253"),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
