import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flavor_folio/components/button.dart';
import 'package:flavor_folio/themes/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 25),

              //Shop name
              Text(
                "FLAVOR FOLIO",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 50,
                  color: secondaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //icon
              // const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(70.0),
                child: Image.asset('lib/images/recipe-book-cover.png',
                ),
              ),

              //title
              Text(
                "YOUR CUSTOMIZED NUTRITION AND COOKING GUIDE",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),

              //subtitle
              Text("Recipes curated to your needs, all at one place!",
                  style: TextStyle(
                    color: Colors.black,
                    height: 2,
                  )),

              const SizedBox(height: 25),
              //get started button
              MyButton(
                  text: "Get started",
                  onTap: () {
                    
                    //go to the menu page

                    Navigator.pushNamed(context, '/menupage');
                  }),
            ],
          )),
    );
  }
}
