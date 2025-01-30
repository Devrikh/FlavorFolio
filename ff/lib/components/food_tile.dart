import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flavor_folio/models/food.dart';

class FoodTile extends StatelessWidget {
  final void Function()? onTap;
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
         
        ),
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(25),
        
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      
            //image
          Image.asset(
            food.imagePath,
            height: 140,
            ),
      
          //name
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),
      
          //price + rating
            SizedBox(
              width: 100,
              height: 38,
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  //price
                  Text(
                    food.calorie,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
      
                  //rating
                  Row(
                    children: [
                      Image.asset('lib/images/flame.png', height: 20),
                    ],
                  ),
                    
                ],)
            )
          ],
        )
      ),
    );
  }
}

