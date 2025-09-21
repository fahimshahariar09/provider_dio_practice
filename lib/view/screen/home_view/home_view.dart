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
  void initState() {
    super.initState();
    // Initialize the StreamController
    _numberStreamController = StreamController<int>();
    // Example: Add numbers to the stream periodically
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!_numberStreamController.isClosed) {
        _numberStreamController.add(timer.tick);
      }
    });
  }

  @override
  void dispose() {
    // Close the StreamController to prevent memory leaks
    _numberStreamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<int>(
        stream: _numberStreamController.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(
                "Number: ${snapshot.data}",
                style: const TextStyle(fontSize: 20),
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text(
                "Error occurred",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            );
          }
          return const Card(
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Stream Builder",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(),
              ],
            ),
          );
        },
      ),
    );
  }
}