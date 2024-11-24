import 'package:flutter/material.dart';

class CreateAccountPageImage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPageImage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _documentTypeController = TextEditingController();
  final TextEditingController _documentImageController = TextEditingController();
  final TextEditingController _documentNumberController = TextEditingController();

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
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle photo button press
                    },
                    child: Text('Your Photo'),
                  ),
                  SizedBox(width: 20),
                  _buildFileInputField('Choose File'),
                ],
              ),
              SizedBox(height: 20),
              _buildTextField('Enter your name as per government documents', _nameController),
              _buildTextField('DOB according to govt. documents', _dobController),
              _buildTextField('Document you want to verify', _documentTypeController),
              _buildTextField('Document (both sides)', _documentImageController),
              _buildTextField('Document number', _documentNumberController),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/createAccount2');
                      // Handle back button press
                    },
                    child: Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Red color for back button
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/createAccountInterest');
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

  Widget _buildFileInputField(String buttonText) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              // Handle choose file button press
            },
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
