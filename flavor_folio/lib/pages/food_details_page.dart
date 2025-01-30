import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flavor_folio/components/button.dart';

import 'package:flavor_folio/models/food.dart';
import 'package:flavor_folio/models/shop.dart';
import 'package:flavor_folio/themes/colors.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantityCount = 0;

  // //decrement quanity
  // void decrementQuantity() {
  //   setState(() {
  //     if (quantityCount > 0) {
  //       quantityCount--;
  //     }
  //   });
  // }

  // //increment quantity
  // void incrementQuantity() {
  //   setState(() {
  //     quantityCount++;
  //   });
  // }

  // //Add to Cart
  // void addToCart() {
  //   //only add if there is something in the cart
  //   if (quantityCount > 0) {
  //     //get access to the shop
  //     final shop = context.read<Shop>();

  //     //add item to cart
  //     shop.addToCart(widget.food, quantityCount);

  //     //Let the user know it was successful
  //     showDialog(
  //         context: context,
  //         barrierDismissible: false,
  //         builder: (context) => AlertDialog(
  //               backgroundColor: primaryColor,
  //               content: const Text(
  //                 "Successfully added to cart!",
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                 ),
  //                 textAlign: TextAlign.center,
  //               ),
  //               actions: [
  //                 IconButton(
  //                     onPressed: () {
  //                       //pop once to remove dialog box
  //                       Navigator.pop(context);

  //                       //pop again to go to previous page
  //                       Navigator.pop(context);
  //                     },
  //                     icon: const Icon(Icons.done))
  //               ],
  //             ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.grey[900],
        ),
        body: Column(
          children: [
            //listview of food details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ListView(
                  children: [
                    //image
                    Image.asset(
                      widget.food.imagePath,
                      height: 190,
                    ),

                    const SizedBox(height: 10),
                    Column(children: [

                      //food name
                      Text(
                        widget.food.name,
                        style: GoogleFonts.dmSerifDisplay(fontSize: 35),
                      ),

                      //description
                      const SizedBox(height: 20),
                      Text("Recipe",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),

                      const SizedBox(height: 30),
                      Text(
                          "The perfect start to your morning: indulge in this delicius shakshuka made from tomatoes, eggs and topped with burrata cheese and fresh parsley.",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 15,
                              height: 2)),
                      const SizedBox(height: 100),  
                      MyButton(text: "Add to Favourites", onTap: () {}) 
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
