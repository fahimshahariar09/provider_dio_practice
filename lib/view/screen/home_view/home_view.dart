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
            if(snapshot.hasData){
              return Text("True");
            } else if (snapshot.hasError){
              return Text("False");
            }
            return Card(
              color: Colors.blue,
              child: Column(
                children: [
                  Text(
                    "Stream Builder",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),

                ],
              ),
            );
          }),
    );
  }
}
