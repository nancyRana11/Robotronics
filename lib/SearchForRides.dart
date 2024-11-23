import 'package:flutter/material.dart';
import 'SearchForRidesOthers.dart'; // Import the new screen

class SearchForRidesScreen extends StatelessWidget {
  final String rideImage = 'images/SearchForRide.png'; // Replace with your image path

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEARCH FOR RIDES'),
        backgroundColor: Colors.blue, // Background color for the AppBar
      ),
      body: Container(
        color: Colors.grey[200], // Light grey background color for the screen
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  _buildRoundedButton(context, 'Self', Colors.black54),
                  SizedBox(width: 20),
                  _buildRoundedButton(context, 'Others', Colors.lightBlue, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchForRidesForOthersScreen()),
                    );
                  }),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  rideImage, // Image below the buttons
                  width: 300, // Set the width for the rectangular image
                  height: 150, // Set the height for the rectangular image
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              _buildTextField('Your Address'),
              SizedBox(height: 10),
              _buildTextField('Destination Address'),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle search ride action
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color for the button
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners for the button
                    ),
                  ),
                  child: Text('Search Ride'),
                ),
              ),
              SizedBox(height: 20), // Ensure space below the button
              Container(
                height: 170, // Height of the additional background area below the button
                color: Colors.grey[200], // Consistent background color below the button
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoundedButton(BuildContext context, String text, Color color, [VoidCallback? onPressed]) {
    return ElevatedButton(
      onPressed: onPressed ?? () {
        // Default action for the button
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: color, // Text color for the button
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), // Rounded corners for the button
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildTextField(String hintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], // Light grey background color for the text field
        borderRadius: BorderRadius.circular(10.0), // Circular edges for the text field
        border: Border.all(color: Colors.lightBlue, width: 2), // Light blue border for the text field
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText, // Placeholder text for the text field
          border: InputBorder.none,
        ),
      ),
    );
  }
}
