import 'package:flutter/material.dart';
import 'package:kehoucars/favorite_screen.dart';

class ActivityProfil extends StatelessWidget {
  const ActivityProfil({super.key});

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
            "Mon activité",
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
                Icons.favorite_outline,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "Mes favoris",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Retrouvez vos recettes favorites",
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
                  builder: (context) => const FavoriteScreen(
                    showBackButton: true,
                  ),
                ),
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
                Icons.restaurant_menu_outlined,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "Mes recettes",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Retrouvez vos recettes enregistrées",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
            onTap: () {},
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
                Icons.publish_outlined,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "Mes recettes publiées",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Gérez les recettes que vous avez publiées",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            trailing: const Icon(
              Icons.chevron_right,
              color: Colors.grey,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}