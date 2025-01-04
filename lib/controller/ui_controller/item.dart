import 'package:flutter/material.dart';
import 'package:provider_dio_practice/model/item.dart';

class ItemProvider with ChangeNotifier{

  List<Item> get items = [];

}