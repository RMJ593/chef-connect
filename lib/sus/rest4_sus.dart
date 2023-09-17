import 'package:flutter/material.dart';

class rest4_sus extends StatelessWidget {
  const rest4_sus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd4d2df),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 157, 153, 176),
        // Add an AppBar with a background color
      ),
      body: ListView(
        children: [
          // Burger Image (covers 1/3 of the page)
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sushi/sus4.jpeg'), // Replace with your burger image path
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Food Item Details
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tempura Sush',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\₹120', // Price
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 20.0),

                // Description
                Text(
                  'Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 20.0),

                // Location Icon and Text
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 30.0,
                      color: Colors.black, // Change the color as needed
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          'Lorem ipsum',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0), // Add space between Location and Delivery Time

                // Delivery Time Icon and Text
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 30.0,
                      color: Colors.black, // Change the color as needed
                    ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery Time',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          '30 Minutes',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 20.0),

                // Add Button
                ElevatedButton(
                  onPressed: () {
                    // Add to Cart logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 157, 153, 176), // White background color
                    onPrimary: Colors.black, // Black text color
                  ),
                  child: Center(
                    
                    child: Text('Add'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
