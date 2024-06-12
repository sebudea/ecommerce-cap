import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_cap/utils/constants.dart';
import 'package:ecommerce_cap/widgets/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        "Cap World",
                        style: TextStyle(
                          fontSize: fontSizeTitulo,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Expanded(
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
          ),
        ],
      ),
    );
  }
}
