import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_cap/utils/constants.dart';
import 'package:flutter/material.dart';

class Carrusel extends StatelessWidget {
  const Carrusel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                Text(
                  // BACKEND
                  "New Era",
                  style: TextStyle(
                    fontSize: fontSizeTitulo,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Expanded(
                  // BACKEND
                  child: Image.network(
                    "https://www.foxcol.com/cdn/shop/files/gorra-de-beisbol-new-era-59-fifty-los-angeles-dodgers-100percent-original-foxcol-colombia-1.jpg?v=1698208253",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 400,
        autoPlay: true,
      ),
    );
  }
}
