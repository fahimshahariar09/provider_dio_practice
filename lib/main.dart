import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dio_practice/controller/ui_controller/item.dart';
import 'package:provider_dio_practice/view/screen/item.dart';
import 'package:provider_dio_practice/view/screen/profile/profile_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => ItemProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: ProfileScreen());
  }
}
