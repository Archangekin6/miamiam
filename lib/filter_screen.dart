import 'dart:ui';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedCategory = "Toutes";
  String selectedTime = "Tous";
  String selectedDifficulty = "Toutes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        title: const Text(
          "Filtres",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Colors.black87,
          ),
        ),
      ),

      body: Stack(
        children: [
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: Container(
                color: Colors.white.withOpacity(0.35),
              ),
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(height: 20),

                    const Text(
                      "Catégorie",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Toutes";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedCategory == "Toutes"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedCategory == "Toutes"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Toutes",
                              style: TextStyle(
                                color: selectedCategory == "Toutes"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Plats";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedCategory == "Plats"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedCategory == "Plats"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Plats",
                              style: TextStyle(
                                color: selectedCategory == "Plats"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "P'tit dej";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedCategory == "P'tit dej"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedCategory == "P'tit dej"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "P'tit dej",
                              style: TextStyle(
                                color: selectedCategory == "P'tit dej"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Salade";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedCategory == "Salade"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedCategory == "Salade"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Salade",
                              style: TextStyle(
                                color: selectedCategory == "Salade"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Desserts";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedCategory == "Desserts"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedCategory == "Desserts"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Desserts",
                              style: TextStyle(
                                color: selectedCategory == "Desserts"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Pâtisseries";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedCategory == "Pâtisseries"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedCategory == "Pâtisseries"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Pâtisseries",
                              style: TextStyle(
                                color: selectedCategory == "Pâtisseries"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCategory = "Viennoiseries";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedCategory == "Viennoiseries"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedCategory == "Viennoiseries"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Viennoiseries",
                              style: TextStyle(
                                color: selectedCategory == "Viennoiseries"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      "Temps de préparation",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTime = "Tous";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedTime == "Tous"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedTime == "Tous"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Tous",
                              style: TextStyle(
                                color: selectedTime == "Tous"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTime = "Moins de 15 min";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedTime == "Moins de 15 min"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedTime == "Moins de 15 min"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Moins de 15 min",
                              style: TextStyle(
                                color: selectedTime == "Moins de 15 min"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTime = "15 - 30 min";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedTime == "15 - 30 min"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedTime == "15 - 30 min"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "15 - 30 min",
                              style: TextStyle(
                                color: selectedTime == "15 - 30 min"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTime = "30 - 60 min";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedTime == "30 - 60 min"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedTime == "30 - 60 min"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "30 - 60 min",
                              style: TextStyle(
                                color: selectedTime == "30 - 60 min"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTime = "Plus d'1h";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedTime == "Plus d'1h"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedTime == "Plus d'1h"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Plus d'1h",
                              style: TextStyle(
                                color: selectedTime == "Plus d'1h"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    const Text(
                      "Difficulté",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDifficulty = "Toutes";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedDifficulty == "Toutes"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedDifficulty == "Toutes"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Toutes",
                              style: TextStyle(
                                color: selectedDifficulty == "Toutes"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDifficulty = "Facile";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedDifficulty == "Facile"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedDifficulty == "Facile"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Facile",
                              style: TextStyle(
                                color: selectedDifficulty == "Facile"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDifficulty = "Moyenne";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedDifficulty == "Moyenne"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedDifficulty == "Moyenne"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Moyenne",
                              style: TextStyle(
                                color: selectedDifficulty == "Moyenne"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDifficulty = "Difficile";
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: selectedDifficulty == "Difficile"
                                  ? const Color(0xFFF09035)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: selectedDifficulty == "Difficile"
                                    ? const Color(0xFFF09035)
                                    : Colors.grey.shade300,
                              ),
                            ),
                            child: Text(
                              "Difficile",
                              style: TextStyle(
                                color: selectedDifficulty == "Difficile"
                                    ? Colors.white
                                    : Colors.black87,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),

                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF09035),
                          foregroundColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        child: const Text(
                          "Appliquer les filtres",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13)
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedCategory = "Toutes";
                            selectedTime = "Tous";
                            selectedDifficulty = "Toutes";
                          });
                        },
                        child: const Text(
                          "Réinitialiser les filtres",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}