import 'package:flutter/material.dart';
import 'package:kehoucars/welcome_screen3.dart';
import 'package:kehoucars/widgets/custom_welcome_screen.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomWelcomeScreen(
        onNext: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const WelcomeScreen3()
              )
          );
        },
        image: "assets/images/creme_chantilly1.jpg",
        name: "Trouvez l'inspiration à chaque recette !",
        description:
        "Explorez notre collection de recettes gourmandes, "
            "apprenez de nouvelles techniques de cuisine"
      ),
    );
  }
}