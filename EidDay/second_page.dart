import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              '🎉 Second Page 🎉',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 40), // Add spacing
          ElevatedButton(
            onPressed: () {
              // Navigate back to the first page
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pinkAccent, // Button background color
            ),
            child: const Text(
              'Go Back to First Page',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
