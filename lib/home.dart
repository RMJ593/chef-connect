import 'package:flutter/material.dart';
import 'burger.dart'; // Import your Burger page
import 'pizza.dart'; // Import your Pizza page
import 'sandwich.dart'; // Import your Sandwich page
import 'sushi.dart'; // Import your Sushi page

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd4d2df),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 157, 153, 176),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              // Add your search functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Choose Your Meal',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
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
                Padding(
                  padding: const EdgeInsets.all(10.0), // Add padding to create a gap
                  child: _buildIconWithBorder(Icons.home),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFoodItemWithBorder(
                  'Burger',
                  'assets/food/burger.png',
                  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Burger()));
                  },
                ),
                _buildFoodItemWithBorder(
                  'Pizza',
                  'assets/food/pizza.png',
                  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Pizza()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFoodItemWithBorder(
                  'Sandwich',
                  'assets/food/sandwich.png',
                  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sandwich()));
                  },
                ),
                _buildFoodItemWithBorder(
                  'Sushi',
                  'assets/food/susi.png',
                  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Sushi()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

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

  Widget _buildFoodItemWithBorder(String itemName, String imagePath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        height: 200.0,
        width: 160.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 157, 153, 176),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: 134.0,
              height: 128.0,
              fit: BoxFit.cover,
            ),
            Text(
              itemName,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Define PizzaPage, SandwichPage, and SushiPage in a similar way
