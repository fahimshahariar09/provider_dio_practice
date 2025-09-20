import 'dart:async';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late StreamController<int> _numberStreamController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: _numberStreamController.stream,
          builder: (context, snapshot) {
            return Card(
              color: Colors.blue,
              child: Column(
                children: [
                  Text("data"),
                ],
              ),
            );
          }),
    );
  }
}
