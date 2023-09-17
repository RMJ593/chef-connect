import 'package:flutter/material.dart';
import 'rest1_bur.dart'; // Import the Rest1BurPage
import 'rest2_bur.dart';
import 'rest3_bur.dart';
import 'rest4_bur.dart';
class Burger extends StatelessWidget {
  const Burger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd4d2df),
      body: ListView(
        children: [
          // Burger Image (covers 1/3 of the page)
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/food/burger.png'), // Replace with your burger image path
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Three Icons Horizontally Placed inside Borders with Gap
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0), // Add padding to create a gap
                child: _buildIconWithBorder(Icons.person),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate back to the home page
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0), // Add padding to create a gap
                  child: _buildIconWithBorder(Icons.home),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0), // Add padding to create a gap
                child: _buildIconWithBorder(Icons.favorite),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0), // Add padding to create a gap
                child: _buildIconWithBorder(Icons.badge),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Choose restaurant',
              style: TextStyle(
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildFoodItemWithBorder('Bacon Burger', 'Restaurant 1', 'assets/burger/bur1.jpeg', '200.00', () {
                // Navigate to the restaurant details page (Rest1BurPage) when tapped
                Navigator.push(context, MaterialPageRoute(builder: (context) => rest1_bur()));
              }),
              _buildFoodItemWithBorder('Veggie Burger', 'Restaurant 2', 'assets/burger/bur2.jpeg', '150.00', () {
                // Navigate to the restaurant details page (Rest1BurPage) when tapped
                Navigator.push(context, MaterialPageRoute(builder: (context) => rest2_bur()));
              }),
              _buildFoodItemWithBorder('Cheeseburger', 'Restaurant 3', 'assets/burger/bur3.jpeg', '180.00', () {
                // Navigate to the restaurant details page (Rest1BurPage) when tapped
                Navigator.push(context, MaterialPageRoute(builder: (context) => rest3_bur()));
              }),
              _buildFoodItemWithBorder('Mushroom Swiss Burger', 'Restaurant 4', 'assets/burger/bur4.jpeg', '120.00', () {
                // Navigate to the restaurant details page (Rest1BurPage) when tapped
                Navigator.push(context, MaterialPageRoute(builder: (context) => rest4_bur()));
              }),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to create an icon with a border
  Widget _buildIconWithBorder(IconData iconData) {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 157, 153, 176),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Icon(iconData, size: 35.0, color: Colors.black),
      ),
    );
  }

  Widget _buildFoodItemWithBorder(String itemName, String restaurantName, String imagePath, String price, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        height: 200.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 157, 153, 176),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            // Left side: Image
            Container(
              width: 121.0,
              height: 141.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20.0), // Space between image and text
            // Right side: Restaurant name, Food item name, and Price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restaurantName,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    itemName,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\₹$price', // Assuming the price is passed as a String
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
