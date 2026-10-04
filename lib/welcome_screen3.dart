import 'package:flutter/material.dart';
import 'package:kehoucars/inscription_screen.dart';
import 'package:kehoucars/widgets/custom_welcome_screen.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomWelcomeScreen(
        onNext: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const InscriptionScreen(),
            ),
          );
        },
        image: "assets/images/crêpe.jpg",
        name: "Épatez vos proches avec vos créations !",
        description:
        "Réalisez de délicieuses recettes, partagez "
            "des moments gourmands et transformez chaque "
            "repas en un souvenir inoubliable.",
      ),
    );
  }
}