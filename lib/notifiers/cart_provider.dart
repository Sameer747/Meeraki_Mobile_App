import 'package:flutter/material.dart';
import 'package:meeraki_store/config/shared_preferences_helper.dart';

class CartProvider extends ChangeNotifier {
  List<String> _cartItems = [];
  List<String> getCartItems() => _cartItems;
  double _subTotal = 0;

  double getSubTotal() => _subTotal;

  fetchCartItems() async {
    _cartItems = await SharedPreferencesHelper().getCart();
    notifyListeners();
  }

  void increaseQuantity(int index) {
    if (int.parse(_cartItems[6 * index + 4]) < 10) {
      _cartItems[6 * index + 4] =
          (int.parse(_cartItems[6 * index + 4]) + 1).toString();

      _subTotal += int.parse(_cartItems[6 * index + 3]);
      notifyListeners();
    }
  }

  void decreaseQuantity(int index) {
    if (int.parse(_cartItems[6 * index + 4]) >= 2) {
      _cartItems[6 * index + 4] =
          (int.parse(_cartItems[6 * index + 4]) - 1).toString();
      _subTotal -= int.parse(_cartItems[6 * index + 3]);
      notifyListeners();
    }
  }

  addToCart(String link, String name, String thumbnail, String unitPrice,
      String quantity, String size) async {
    _cartItems.addAll([link, name, thumbnail, unitPrice, quantity, size]);
    _subTotal = _subTotal + int.parse(unitPrice) * int.parse(quantity);
    notifyListeners();

    SharedPreferencesHelper()
        .addToCart(link, name, thumbnail, unitPrice, quantity, size);
  }

  removeFromCart(int index) {
    _subTotal = _subTotal -
        int.parse(_cartItems[6 * index + 3]) *
            int.parse(_cartItems[6 * index + 4]);
    _cartItems.removeRange(6 * index, 6 * index + 6);
    notifyListeners();
    SharedPreferencesHelper().removeFromCart(index);
  }
}
