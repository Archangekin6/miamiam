import 'package:flutter/material.dart';
import 'package:kehoucars/about_screen.dart';
import 'package:kehoucars/privacy_screen.dart';
import 'package:kehoucars/terms_screen.dart';

class InformationProfil extends StatelessWidget {
  const InformationProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Informations",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1E1E1E),
            ),
          ),

          const SizedBox(height: 10),

          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF1E5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.info_outline,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "À propos de l'application",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Découvrez Miam-miam",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AboutScreen()
                  )
              );
            },
          ),

          const Divider(
            height: 1,
            color: Color(0xFFEDEDED),
          ),

          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF1E5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.description_outlined,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "Conditions d'utilisation",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Consultez nos conditions",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.push(
                  context,
                MaterialPageRoute(
                    builder: (context) => const TermsScreen()
              ));
            },
          ),

          const Divider(
            height: 1,
            color: Color(0xFFEDEDED),
          ),

          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF1E5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.lock_outline,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "Politique de confidentialité",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Découvrez comment vos données sont utilisées",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PrivacyScreen()
                )
              );
            },
          ),

          const Divider(
            height: 1,
            color: Color(0xFFEDEDED),
          ),

          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFFFE8E8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.logout,
                color: Colors.redAccent,
              ),
            ),
            title: const Text(
              "Se déconnecter",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.redAccent,
              ),
            ),
            subtitle: const Text(
              "Quitter votre compte",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            onTap: () {
            },
          ),
        ],
      ),
    );
  }
}