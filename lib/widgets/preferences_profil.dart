import 'package:flutter/material.dart';

class PreferencesProfil extends StatefulWidget {
  const PreferencesProfil({super.key});

  @override
  State<PreferencesProfil> createState() => _PreferencesProfilState();
}

class _PreferencesProfilState extends State<PreferencesProfil> {
  bool notifications = true;
  bool darkMode = false;
  bool sounds = true;

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
            "Préférences",
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
                Icons.notifications_none_rounded,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "Notifications",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Recevoir les notifications",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            trailing: Switch(
              value: notifications,
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFFF09035),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade300,
              onChanged: (value) {
                setState(() {
                  notifications = value;
                });
              },
            ),
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
                Icons.dark_mode_outlined,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "Mode sombre",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Utiliser le thème sombre",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            trailing: Switch(
              value: darkMode,
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFFF09035),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade300,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
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
                Icons.volume_up_outlined,
                color: Color(0xFFF09035),
              ),
            ),
            title: const Text(
              "Sons",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
              ),
            ),
            subtitle: const Text(
              "Activer les sons de l'application",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            trailing: Switch(
              value: sounds,
              activeColor: Colors.white,
              activeTrackColor: const Color(0xFFF09035),
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.grey.shade300,
              onChanged: (value) {
                setState(() {
                  sounds = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}