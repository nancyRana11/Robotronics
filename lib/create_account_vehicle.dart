import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final TextEditingController _vehicleTypeController = TextEditingController();
  final TextEditingController _vehicleNumberController = TextEditingController();
  final TextEditingController _timePeriodController = TextEditingController();
  final TextEditingController _vehicleImageController = TextEditingController();
  final TextEditingController _vehicleDocController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Account',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              _buildTextField('Type of Vehicle', _vehicleTypeController),
              _buildTextField('Vehicle Number', _vehicleNumberController),
              _buildTextField('Time Period of Vehicle', _timePeriodController),
              _buildImageInputField('Vehicle Image'),
              _buildImageInputField('Vehicle Doc. Image'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/createAccountInterest');
                      // Handle back button press
                    },
                    child: Text('Back'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Red color for back button
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/liscenceInfo');
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
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/liscenceInfo');
                    // Handle skip button press
                  },
                  child: Text('Skip'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey, // Grey color for skip button
                  ),
                ),
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

  Widget _buildImageInputField(String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              // Handle file pick action
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.lightBlue),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(child: Text('Choose File')),
            ),
          ),
        ],
      ),
    );
  }
}
