import 'package:flutter/material.dart';
import 'package:kehoucars/widgets/activity_profile.dart';
import 'package:kehoucars/widgets/information_profil.dart';
import 'package:kehoucars/widgets/preferences_profil.dart';
import 'package:kehoucars/widgets/top_profil.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFDFBF7),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const TopProfil(
                image: "assets/images/avatar.jpg",
                username: "Gabriel",
                email: "admin@gmail.com",
              ),
              const ActivityProfil(),
              const PreferencesProfil(),
              const InformationProfil(),
            ],
          ),
        ),
    );
  }
}