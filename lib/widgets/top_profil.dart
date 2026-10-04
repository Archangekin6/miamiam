import 'package:flutter/material.dart';
import 'package:kehoucars/edit_profile_screen.dart';

class TopProfil extends StatelessWidget {
  final String image;
  final String username;
  final String email;

  const TopProfil({
    super.key,
    required this.image,
    required this.username,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFFDFBF7),
      ),
      child: Column(
        children: [
          const SizedBox(height: 60),

          const Text(
            "Mon profil",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 19),

          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(image),
          ),

          const SizedBox(height: 10),

          Text(
            username,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            email,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EditProfileScreen()
                )
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(180, 50),
              backgroundColor: const Color(0xFFF09035),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
            ),
            child: const Text(
              "Modifier le profil",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}