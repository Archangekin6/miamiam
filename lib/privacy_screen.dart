import 'package:flutter/material.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFBF7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDFBF7),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        title: const Text(
          "Politique de confidentialité",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1E1E1E),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Politique de confidentialité",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Dernière mise à jour : 2026",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "1. Informations collectées",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Lorsque vous utilisez Miam-miam, certaines informations "
                  "peuvent être nécessaires au fonctionnement de votre compte, "
                  "notamment votre nom et votre adresse e-mail.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "2. Utilisation des informations",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Les informations collectées peuvent être utilisées pour "
                  "permettre la gestion de votre compte, sauvegarder vos "
                  "préférences et améliorer votre expérience dans l'application.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "3. Protection des données",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Nous mettons en place des mesures adaptées afin de protéger "
                  "les informations des utilisateurs contre les accès non "
                  "autorisés, la modification ou la divulgation.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "4. Données personnelles",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Vous pouvez demander la modification ou la suppression "
                  "de vos informations personnelles lorsque les fonctionnalités "
                  "correspondantes sont disponibles dans l'application.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "5. Évolution de la politique",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Cette politique peut être mise à jour lorsque l'application "
                  "évolue ou lorsque de nouvelles fonctionnalités sont ajoutées.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 30),

            Center(
              child: Text(
                "© 2026 Miam-miam",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}