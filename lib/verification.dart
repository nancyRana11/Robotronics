import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verification'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Verification',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please enter the verification number we have sent to your phone number.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              _buildTextField('OTP'),
              SizedBox(height: 10),
              Text(
                'Please enter the verification number we have sent to your father\'s contact number.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              _buildTextField('OTP'),
              SizedBox(height: 10),
              Text(
                'Please enter the verification code we have sent to your email.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              _buildTextField('Verification Code'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/createAccount');

                      // Handle back button press
                    },
                    child: Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Red color for back button
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/createPassword');
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

            ],
          ),
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
