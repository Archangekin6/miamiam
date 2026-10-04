
import 'package:flutter/material.dart';
import 'package:kehoucars/filter_screen.dart';
import 'package:kehoucars/widgets/list_card.dart';

class FavoriteScreen extends StatefulWidget {
  final bool showBackButton;
  const FavoriteScreen({
    super.key,
    this.showBackButton = false
  });

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
    return Scaffold(
        backgroundColor: const Color(0xFFFDFBF7),
        body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if (widget.showBackButton)
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: Container(
                      height: 45,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Parcourez vos favoris",
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FilterScreen()
                            )
                        );
                      },
                      icon: Icon(Icons.tune)
                  )
                ],
              ),
              const SizedBox(height: 15),

              const Text(
                "Mes recettes favorites",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E1E1E),
                ),
              ),

              const SizedBox(height: 10),

              Expanded(

                 child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 8,
                  ),
                  itemCount: myListCards.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: myListCards[index],
                    );
                  },
                ),
                )

            ],
          ),
        ),
    );
  }
}