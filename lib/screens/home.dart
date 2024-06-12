import 'package:ecommerce_cap/utils/constants.dart';
import 'package:ecommerce_cap/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NavBar(),
      body: Center(
        child: Text("Hola Home"),
      ),
    );
  }
}
