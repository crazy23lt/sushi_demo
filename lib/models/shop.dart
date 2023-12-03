import 'package:demo/models/food.dart';
import 'package:flutter/cupertino.dart';
import "food.dart";

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    Food(
      name: "Salmon Sushi",
      imagePath: "lib/images/004-sushi-3.png",
      price: "21.00",
      rating: "4.9",
    ),
    Food(
      name: "Tuna",
      imagePath: "lib/images/003-sushi-2.png",
      price: "23.00",
      rating: "4.2",
    )
  ];
  // customer Cart
  List<Food> _cart = [];
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }
  void removeFromCart(Food food){
    _cart.remove(food);
    notifyListeners();
  }
}
