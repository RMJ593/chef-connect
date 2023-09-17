import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9d99b0), // Set background color

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Image
            Image.asset(
              'assets/LOGO.png',
              width: 200.0,
              height: 200.0,
            ),

            // Text Label
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'FOOD ORDERING APP',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Get a Meal Button
            Padding(
              padding: const EdgeInsets.only(top: 55.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Home screen when the button is pressed
                  Navigator.pushNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffd4d2df), // Button background color
                  onPrimary: Colors.black, // Text color
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20), // Button padding
                  textStyle: TextStyle(
                    fontSize: 18.0, // Text font size
                    fontWeight: FontWeight.bold, // Text font weight
                  ),
                ),
                child: Text('Get a meal'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
