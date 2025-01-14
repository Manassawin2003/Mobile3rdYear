import 'package:flutter/material.dart';
import 'second_page.dart'; // Import the SecondPage

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/eidMubarak.png'), // Background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  '🎂 Eid Mubarak! 🎉\nTo All Muslim! 😊',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 20, 148, 24),
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 4.0,
                        color: Colors.white,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add spacing
              // Cake Image
              Center(
                child: Image.asset(
                  'assets/cresent.png', // Path to your cake image
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 40), // Add spacing
              // Button to Navigate
              ElevatedButton(
                onPressed: () {
                  // Navigate to the next page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 167, 93, 118), // Button background color
                ),
                child: const Text(
                  'Go to Next Page',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
