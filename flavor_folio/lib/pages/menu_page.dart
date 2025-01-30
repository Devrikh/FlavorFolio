import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flavor_folio/components/button2.dart';
import 'package:flavor_folio/components/food_tile.dart';
import 'package:flavor_folio/models/shop.dart';
import 'package:flavor_folio/pages/food_details_page.dart';


class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //navigate to food item details page

  void navigateToFoodDetais(int index) {
    //get the shop and its menu
    final shop = context.read<Shop>();
    final menu = shop.menu;

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FoodDetailsPage(
            food: menu[index],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final menu = shop.menu;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 166, 220, 245),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.grey[800],
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            
          ),
          title: Text(
            'Flavor Folio',
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 20,
              
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cartpage');
                },
                icon: const Icon(Icons.favorite_outline)),
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //recipe of the day banner

          Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //promo message
                      Text('Recipe of the day',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                          Text('Masala Dosa',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 30,
                            color: Colors.white,
                          )),

                      const SizedBox(height: 10),

                      //redeem button
                      MyButton2(text: 'View', onTap: () {},),
                    ],
                  ),

                  //image
                  Image.asset(
                    'lib/images/masala-dosa.png',
                    height: 100,
                  )
                ],
              )),
          const SizedBox(height: 25),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
                decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(30),
              ),
              hintText: "Search recipes...",
            )),
          ),

          const SizedBox(height: 10),
          //menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text('For you',
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 20,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                )),
          ),

          const SizedBox(height: 10),

          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: menu.length,
            itemBuilder: (context, index) => FoodTile(
              food: menu[index],
              onTap: () => navigateToFoodDetais(index),
            ),
          )),

          const SizedBox(height: 25),

          //popular items
          Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //image
                  Row(
                    children: [
                      Image.asset(
                        'lib/images/hot_pot.png',
                        height: 60,
                      ),
                      const SizedBox(width: 20),

                      //name and price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //name
                          Text("Sichuan Hot-pot",
                              style: GoogleFonts.dmSerifDisplay(fontSize: 18)),

                          const SizedBox(height: 5),

                          //description
                          Text("Recipe",
                              style: TextStyle(
                                color: Colors.grey[700],
                              ))
                        ],
                      ),
                    ],
                  ),

                  //heart
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 28,
                  )
                ],
              ))
        ]));
  }
}
