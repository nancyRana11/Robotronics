import 'package:flutter/material.dart';


class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Create Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Welcome here, we are waiting for you.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            _buildTextField('Full Name'),
            _buildTextField('Phone Number'),
            _buildTextField('Email'),
            _buildTextField('Father\'s Name'),
            _buildTextField('Father\'s Contact Number'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ElevatedButton(
                //   onPressed: () {
                //     // Handle back button press
                //   },
                //   child: Text('Back'),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.red, // Red color for back button
                //   ),
                // ),
                ElevatedButton(
                  onPressed: () {

                    Navigator.pushNamed(context, '/verificationPage');
                    // Handle next button press
                  },
                  child: Text('Next'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Blue color for next button
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginPage');
                  // Handle "Already have an account" button press
                },
                child: Text('Already have an account?'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.lightBlue),
          ),
          labelText: labelText,
        ),
      ),
    );
  }
}
