
import 'package:dio/dio.dart';
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
    try {
      final dio = Dio();
      final response = await dio.get("https://api.example.com/items");
      _items =
          (response.data as List).map((item) => Item.fromJson(item)).toList();
    } catch (e) {
      // Handle error
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
