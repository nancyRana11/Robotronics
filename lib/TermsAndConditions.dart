import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms and Conditions'),
        backgroundColor: Colors.purple, // Purple shade for the AppBar
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Text(
                  '''1. Acceptance of Terms
     By using our ride and delivery services,
     you agree to comply with and be bound by 
     these Terms and Conditions. This agreement 
     governs your use of the app, whether you are 
     a rider, driver, or recipient of deliveries.You
     must be at least 18 years old to use the 
     services provided by the app. We reserve the 
     right to modify these terms at any time, and 
     any changes will be effective once posted on 
     the app. It is your responsibility to review 
     these terms periodically to stay informed of 
     any updates''', // Replace with your text
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey[200],
              child: SingleChildScrollView(
                child: Text(
                  'Your text for the second container goes here...', // Replace with your text
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homeMain');
                // Handle accept and continue action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Blue background for the button
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
              child: Text(
                'Accept and Continue',
                style: TextStyle(color: Colors.white), // White color for the text
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TermsAndConditionsPage(),
  ));
}
