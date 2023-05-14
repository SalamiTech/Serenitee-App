import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(
            image: AssetImage(
              'assets/wel.png',
            ),
          ),
          const Text("Let's Get Started With Your Personal Journey"),
          Row(
            children: [
              OutlinedButton(onPressed: () {}, child: Text('Sign Up')),
              ElevatedButton(onPressed: () {}, child: Text('Login'))
            ],
          ),
        ],
      ),
    );
  }
}
