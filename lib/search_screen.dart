import 'package:flutter/material.dart';
import 'package:kehoucars/widgets/list_card.dart';
import 'package:kehoucars/widgets/search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<ListCard> myListCards = const [
    ListCard(
      image: "assets/images/gt1.jpg",
      name: "Cake",
      description: "Cake à la vanille",
      type: "patisserie",
    ),
    ListCard(
      image: "assets/images/gt2.jpg",
      name: "Glace",
      description: "Délicieuse crème glacé",
      type: "dessert",
    ),
    ListCard(
      image: "assets/images/gt3.jpg",
      name: "Croissant",
      description: "Croissant français fait maison",
      type: "viennoiserie",
    ),
    ListCard(
      image: "assets/images/gt4.jpg",
      name: "Crêpe",
      description: "Crêpe au lait",
      type: "dessert",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xFFFDFBF7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Search(),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Toutes les recettes",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "4 493",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                    ),
                    child: const Text(
                      "Filtres",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                physics: const BouncingScrollPhysics(),
                itemCount: myListCards.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: myListCards[index],
                  );
                },
              ),
            ),
          ],
        ),
    );
  }
}