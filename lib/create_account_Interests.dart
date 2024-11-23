import 'package:flutter/material.dart';

class CreateAccountPageInterest extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPageInterest> {
  final TextEditingController _interestsController = TextEditingController();
  final TextEditingController _badActivitiesController = TextEditingController();
  final TextEditingController _additionalInfoController = TextEditingController();
  final TextEditingController _educationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
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
                'Create Account',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Your Interests',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildTextField('Enter your interests', _interestsController),
              SizedBox(height: 20),
              Text(
                'Any Bad Activities',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildTextField('e.g.: Smoking, Alcohol', _badActivitiesController),
              SizedBox(height: 20),
              Text(
                'Anything you want others to know',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildTextField('e.g.: Educational Qualifications', _additionalInfoController),
              SizedBox(height: 20),
              Text(
                'Educational Qualifications',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildTextField('Enter your educational qualifications', _educationController),
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
      ),
    );
  }

  Widget _buildTextField(String hintText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
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
