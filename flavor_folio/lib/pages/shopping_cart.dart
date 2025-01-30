import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flavor_folio/themes/colors.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: secondaryColor,
    appBar: AppBar(
      elevation: 0, 
      backgroundColor: Colors.transparent,
      title: Text(
                "FAVOURITES",
                style: GoogleFonts.dmSerifDisplay(
                color: Colors.white,
                fontSize: 25,
                
                ),
              ),
     ),
    );
  }
}
