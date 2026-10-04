import 'package:flutter/material.dart';
import 'package:kehoucars/filter_screen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFDFBF7),
      ),
      child: Column(
        children: [
          Row(
            spacing: 5,
            children: [
             Container(
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.transparent,
               ),
               child: IconButton(
                   onPressed: (){
                     Navigator.pop(context);
                   },
                   icon: Icon(Icons.arrow_back_ios)
               ),
             ),
              Expanded(
                  child: Container(
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Trouvez vos recettes",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                            fontSize: 14
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search, color: Colors.black,),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade300
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(
                                color: Colors.black,
                              )
                          )
                      ),
                    ),
                  )
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                ),
                child: IconButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FilterScreen()
                          )
                      );
                    },
                    icon: Icon(Icons.tune)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
