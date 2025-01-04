import 'package:flutter/material.dart';
import 'package:provider_dio_practice/model/item.dart';

class ItemProvider with ChangeNotifier{

  List<Item> _items = [];
  bool _isLoading = false;

  List<Item> get items => _items;

}