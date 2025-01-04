import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider_dio_practice/model/item.dart';

class ItemProvider with ChangeNotifier {
  List<Item> _items = [];
  bool _isLoading = false;

  List<Item> get items => _items;
  bool get isLoading => _isLoading;

  Future<void> fetchItems() async {
    _isLoading = true;
    notifyListeners();
    try {} catch (e) {
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
