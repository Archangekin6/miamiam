import 'package:flutter/material.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

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
          "Conditions d'utilisation",
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
              "Conditions d'utilisation",
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
              "1. Présentation",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Miam-miam est une application permettant aux utilisateurs "
                  "de découvrir des recettes de cuisine, de consulter leur "
                  "contenu et de sauvegarder leurs recettes préférées.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "2. Utilisation de l'application",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "L'utilisateur s'engage à utiliser Miam-miam de manière "
                  "responsable et à ne pas utiliser l'application à des fins "
                  "illégales ou nuisibles.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "3. Compte utilisateur",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Certaines fonctionnalités peuvent nécessiter la création "
                  "d'un compte. L'utilisateur est responsable des informations "
                  "fournies lors de son inscription et de la confidentialité "
                  "de ses identifiants.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "4. Contenu des recettes",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Les recettes présentées dans l'application sont proposées "
                  "à titre informatif. Les utilisateurs doivent adapter les "
                  "recettes à leurs besoins et vérifier les éventuelles "
                  "allergies ou restrictions alimentaires.",
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "5. Modification des conditions",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E1E1E),
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Les présentes conditions peuvent être modifiées afin de "
                  "tenir compte de l'évolution de l'application et de ses "
                  "fonctionnalités.",
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