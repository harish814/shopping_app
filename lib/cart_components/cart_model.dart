import 'package:flutter/material.dart';
import 'cart_components.dart';

class CartModel extends ChangeNotifier {
  List<CartComponents> cartItems = [];

  addCartItems({String timage, String tcost, String titemName}){
    final cartComponents = CartComponents(image: timage, cost: tcost, itemName: titemName);
    cartItems.add(cartComponents);
    notifyListeners();
  }
  deleteCartItems(int index){
    cartItems.removeAt(index);
    notifyListeners();
  }
}