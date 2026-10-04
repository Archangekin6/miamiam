import 'package:flutter/material.dart';
import 'package:kehoucars/account_screen.dart';
import 'package:kehoucars/favorite_screen.dart';
import 'package:kehoucars/search_screen.dart';
import 'package:kehoucars/widgets/custom_bottom_navigation_bar.dart';
import 'package:kehoucars/widgets/header.dart';
import 'package:kehoucars/widgets/product_card.dart';
import 'package:kehoucars/widgets/product_tendance.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<ProductCard> myProductCards = const [
    ProductCard(
      image: "assets/images/gt1.jpg",
      name: "Cake",
      type: "Pâtisserie",
    ),
    ProductCard(
      image: "assets/images/gt2.jpg",
      name: "Glace",
      type: "Dessert",
    ),
    ProductCard(
      image: "assets/images/gt3.jpg",
      name: "Croissant",
      type: "Viennoiserie",
    ),
    ProductCard(
      image: "assets/images/gt4.jpg",
      name: "Crêpe",
      type: "Dessert",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: const Color(0xFFFDFBF7),

        body: _currentIndex == 0
            ? Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Header(),
            ),

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),

                      const Row(
                        children: [
                          Text(
                            "Découvrez",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.cake_outlined),
                        ],
                      ),

                      const SizedBox(height: 5),

                      Text(
                        "Les recettes qui vont vous donner faim.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),

                      const SizedBox(height: 30),

                      const Text(
                        "Les recettes tendances",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),

                      const SizedBox(height: 12),

                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 2.2,
                        physics:
                        const NeverScrollableScrollPhysics(),
                        children: const [
                          ProductTendance(
                            image: "assets/images/gt1.jpg",
                            name: "Cake",
                          ),
                          ProductTendance(
                            image: "assets/images/gt2.jpg",
                            name: "Glace",
                          ),
                          ProductTendance(
                            image: "assets/images/gt3.jpg",
                            name: "Croissant",
                          ),
                          ProductTendance(
                            image: "assets/images/gt4.jpg",
                            name: "Crêpe",
                          ),
                          ProductTendance(
                            image: "assets/images/ome.jpg",
                            name: "P'tit dej",
                          ),
                          ProductTendance(
                            image: "assets/images/salade.jpg",
                            name: "Salade",
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Recettes publiées récemment",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      SizedBox(
                        height: 190,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics:
                          const BouncingScrollPhysics(),
                          itemCount: myProductCards.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 12);
                          },
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 150,
                              child: myProductCards[index],
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 30),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Les meilleures viennoiseries",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      SizedBox(
                        height: 190,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics:
                          const BouncingScrollPhysics(),
                          itemCount: myProductCards.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 12);
                          },
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 150,
                              child: myProductCards[index],
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 30),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Les meilleurs gâteaux",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      SizedBox(
                        height: 190,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics:
                          const BouncingScrollPhysics(),
                          itemCount: myProductCards.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 12);
                          },
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 150,
                              child: myProductCards[index],
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 30),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Les meilleurs desserts",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      SizedBox(
                        height: 190,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          physics:
                          const BouncingScrollPhysics(),
                          itemCount: myProductCards.length,
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 12);
                          },
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 150,
                              child: myProductCards[index],
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
            : _currentIndex == 1
            ? const SearchScreen()
            : _currentIndex == 2
            ? const FavoriteScreen()
            : const AccountScreen(),

        bottomNavigationBar: CustomBottomNavBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}