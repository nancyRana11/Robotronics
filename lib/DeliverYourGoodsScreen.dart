import 'package:flutter/material.dart';

class DeliverYourGoodsScreen extends StatelessWidget {
  final String productImage = 'images/deliverYourGoods.png'; // Replace with your image path

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DELIVER YOUR GOODS'),
        backgroundColor: Colors.purpleAccent.shade700,
      ),
      body: Container(
        color: Colors.cyan.shade50, // Light sky blue color for the background
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Image.asset(
                  productImage, // Image below the app bar
                  width: 200, // Set the width for the rectangular image
                  height: 250, // Set the height for the rectangular image
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFFDAB9), width: 3), // Dark peach thick boundary
                  borderRadius: BorderRadius.circular(10.0), // Circular edges
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Delivery Address', // Placeholder text
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.edit, color: Colors.grey), // Editing icon
                  SizedBox(width: 5),
                  Text('Edit Address', style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 20),
              Text('About the Product', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFDAB9), // Dark peach color
                  borderRadius: BorderRadius.circular(10.0), // Circular edges
                ),
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Give us details about the product',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),
              Text('Add Image of the Product', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFDAB9), // Dark peach color
                  borderRadius: BorderRadius.circular(10.0), // Circular edges
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_a_photo, color: Colors.black),
                    SizedBox(width: 10),
                    Text('Upload Image', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
