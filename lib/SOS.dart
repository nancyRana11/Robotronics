import 'package:flutter/material.dart';

class SOSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple, // Purple shade for the AppBar
        title: Text('SOS'),
      ),
      body: Container(
        color: Colors.grey[200], // Light grey background color for the screen
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch buttons to fill the width
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle FEELING UNCOMFORTABLE button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Orange background for the button
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('FEELING UNCOMFORTABLE'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle IN TROUBLE button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Red background for the button
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('IN TROUBLE'),
            ),
          ],
        ),
      ),
    );
  }
}
