import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'images/background.png', // Path to your image
              fit: BoxFit.cover, // Cover the entire screen
            ),
          ),
          // AppBar and content
          Column(
            children: [
              // Transparent AppBar
              AppBar(
                backgroundColor: Colors.transparent, // Make AppBar transparent
                elevation: 0, // Remove shadow
              ),
              // Content positioned within the Stack
              Expanded(
                child: Stack(
                  children: [
                    // Positioned text container "Ride or Send"
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Stack(
                        children: [
                          // Outline
                          Text(
                            'Ride or Send,',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic, // Italic font style
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.brown,
                            ),
                          ),
                          // Fill
                          Text(
                            'Ride or Send,',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic, // Italic font style
                              color: Colors.deepOrange.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Positioned text container "We have got you covered"
                    Positioned(
                      top: 50,
                      left: 125,
                      child: Stack(
                        children: [
                          // Outline
                          Text(
                            'We have got you covered',
                            style: TextStyle(
                              fontSize: 24,
                              fontStyle: FontStyle.italic, // Italic font style
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.brown,
                            ),
                          ),
                          // Fill
                          Text(
                            'We have got you covered',
                            style: TextStyle(
                              fontSize: 24,
                              fontStyle: FontStyle.italic, // Italic font style
                              color: Colors.deepOrange.shade100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Center image in a container with defined size

                    // Login and Register buttons side by side
                    Positioned(
                      top: 500,
                      left: 25,
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                              ), // Increase padding
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(150, 50),
                              ), // Set minimum size
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0), // Rectangular shape
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.blue; // Change color when pressed
                                  }
                                  return Colors.white; // Default color
                                },
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Text color
                              overlayColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.blue; // Color when pressed
                                  }
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/loginPage');
                            },
                            child: Text('Login'),
                          ),
                          SizedBox(width: 20), // Gap between the buttons
                          ElevatedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                              ), // Increase padding
                              minimumSize: MaterialStateProperty.all<Size>(
                                Size(150, 50),
                              ), // Set minimum size
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0), // Rectangular shape
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.blue; // Change color when pressed
                                  }
                                  return Colors.white; // Default color
                                },
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black), // Text color
                              overlayColor: MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {
                                    return Colors.blue; // Color when pressed
                                  }
                                  return Colors.transparent;
                                },
                              ),
                            ),
                            onPressed: () {

                              Navigator.pushNamed(context, '/createAccount');
                            },
                            child: Text('Register'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

