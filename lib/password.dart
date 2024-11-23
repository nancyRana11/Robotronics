import 'package:flutter/material.dart';

class CreatePasswordScreen extends StatefulWidget {
  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reenterPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Password'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Create Password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Please create the password.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            _buildPasswordField('Create strong password', _passwordController),
            SizedBox(height: 20),
            _buildPasswordField('Re-enter the password', _reenterPasswordController),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle back button press
                  },
                  child: Text('Back'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Red color for back button
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
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

  Widget _buildPasswordField(String hintText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.lightBlue),
          ),
          hintText: hintText,
        ),
        onTap: () {
          if (controller.text.isEmpty) {
            setState(() {
              controller.clear();
            });
          }
        },
      ),
    );
  }
}
