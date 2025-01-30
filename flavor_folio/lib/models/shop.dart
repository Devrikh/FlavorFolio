import 'package:flutter/material.dart';
import 'package:flavor_folio/models/food.dart';

class Shop extends ChangeNotifier {

  //Menu fetching from json

  final List<Food> _menu = [
    //Salmon Sushi
    
    Food(

        name: "Shakshuka",
        calorie: "Medium",
        
        imagePath: 'lib/images/shakshuka.png'),

    
    // Food(
    //     name: "Tuna Sashimi",
    //     calorie: "Low",
        
    //     imagePath: 'lib/images/tuna_sushi.png'),

    // Food(
    //     name: "Fried Shrimp Tempura",
    //     price: "High",
        
    //     imagePath: 'lib/images/shrimp.png'),

    // Food(
    //     name: "Fresh Russian Salad",
    //     price: "Medium",
        
    //     imagePath: 'lib/images/vegetables.png'),
  ];

  //customer cart
  // final List<Food> _cart = [];

  //getter methods
  List<Food> get menu => _menu;
  //List<Food> get cart => _cart;

  // //add to cart
  // void addToCart(Food item, int quantity) {
  //   for (int i = 0; i < quantity; i++) {
  //     _cart.add(item);
  //   }
  //   notifyListeners();
  // }

  // //remove from cart
  // void removeFromCart(Food item) {
  //   _cart.remove(item);
  //   notifyListeners();
  // }
  
}