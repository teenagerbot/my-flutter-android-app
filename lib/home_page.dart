import "package:flutter/material.dart";

import "desing/images.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MotorcycleImage,
      ),
    );
  }
}