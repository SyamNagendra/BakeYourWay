import 'package:flutter/material.dart';
import 'package:uidesign06/data/items.dart';

class CartModel extends ChangeNotifier {
  List<Cakes> _items = [];

  List<Cakes> get items => _items;

  void add(Cakes cake) {
    _items.add(cake);
    notifyListeners();
  }

  void remove(Cakes cake) {
    _items.remove(cake);
    notifyListeners();
  }

  void updateQuantity(Cakes cake, int quantity) {
    int index = _items.indexWhere((item) => item.id == cake.id);
    if (index != -1) {
      _items[index].quantity = quantity;
      notifyListeners();
    }
  }

  double get totalPrice => _items.fold(0, (total, current) => total + (current.price * current.quantity));
}
