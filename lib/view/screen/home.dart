import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ফিউচার ফাংশন যা ডেটা ফেচ করবে (উদাহরণ হিসেবে সিমুলেটেড ডেটা)
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 2)); // সিমুলেটেড ডিলে
    return "Data loaded successfully!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder<String>(
            future: fetchData(), // ফিউচার ফাংশন কল
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // ডেটা লোড হচ্ছে
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                // এরর হ্যান্ডলিং
                return Center(
                  child: Text(
                    "Error: ${snapshot.error}",
                    style: const TextStyle(color: Colors.red, fontSize: 16),
                  ),
                );
              } else if (snapshot.hasData) {
                // ডেটা পাওয়া গেছে
                return Card(
                  color: Colors.blue,
                  elevation: 4,
                  margin: const EdgeInsets.all(16),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      snapshot.data!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              }
              // ডিফল্ট কেস (যদি কোনো ডেটা না থাকে)
              return const Card(
                color: Colors.grey,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "No data available",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}