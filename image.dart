import 'package:flutter/material.dart';



class ImageContainerPage extends StatelessWidget {
  // Path to your image
  final String imagePath = 'images/truckDelivery.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Container Page'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 3),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover, // Adjust the image to fill the container
            ),
          ),
        ),
      ),
    );
  }
}
