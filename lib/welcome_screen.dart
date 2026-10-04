import 'package:flutter/material.dart';
import 'package:kehoucars/welcome_screen2.dart';
import 'package:kehoucars/widgets/custom_welcome_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomWelcomeScreen(
        onNext: () {
          Navigator.pushReplacement(
              context,
            MaterialPageRoute(
                builder: (context) => const WelcomeScreen2()
            )
          );
        },
        image: "assets/images/gt1.jpg",
        name: "La cuisine devient un plaisir !",
        description:
        "Découvrez des recettes savoureuses, "
            "réveillez votre créativité et régalez-vous "
            "à chaque bouchée.",
      ),
    );
  }
}