import 'package:flutter/material.dart';
//import 'package:flutter_basics/login_Screen.dart';

import 'login_Screen.dart';
import 'create_account_screen.dart';
import 'home_main.dart';
import 'verification.dart';
import 'create_account_vehicle.dart';
import 'verification.dart';
import 'create_account_Interests.dart';
import 'create_account_image.dart';
import 'create_account2.dart';

import 'DeliverYourGoodsScreen.dart';
import 'SearchForRides.dart';
import 'SearchForRidesOthers.dart';
import 'chats.dart';
import 'insurance.dart';
import 'Tracking.dart';
import 'SOS.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "FlutterApp",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SOSPage(),
        routes: {
          '/createAccount': (context) => CreateAccountScreen(),
        });
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final AnimationController _gaadiController;
  late final Animation<double> _gaadiAnimation;
  late final AnimationController _adventureController;
  late final Animation<double> _adventureAnimation;
  late final AnimationController _letsGoController;
  late final Animation<double> _letsGoAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize the controller and animation for image
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Initialize the controller and animation for GAADISATHI
    _gaadiController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _gaadiAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _gaadiController,
        curve: Curves.easeInOut,
      ),
    );

    // Initialize the controller and animation for ADVENTURE AWAITS
    _adventureController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _adventureAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _adventureController,
        curve: Curves.easeInOut,
      ),
    );

    // Initialize the controller and animation for LET'S GO
    _letsGoController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _letsGoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _letsGoController,
        curve: Curves.easeInOut,
      ),
    );

    _startAnimation();

    // Navigate to DashBoardScreen after 7 seconds
    Future.delayed(Duration(seconds: 7), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  void _startAnimation() {
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _controller.forward();
      });

      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          _gaadiController.forward();
        });
      });

      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          _adventureController.forward();
        });
      });

      Future.delayed(Duration(seconds: 3), () {
        setState(() {
          _letsGoController.forward();
        });
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _gaadiController.dispose();
    _adventureController.dispose();
    _letsGoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double imageWidth = 540;
    double imageHeight = 462;

    double displayWidth = screenWidth * 0.9;
    double displayHeight = screenHeight * 0.45;

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: ScaleTransition(
              scale: _animation,
              child: Container(
                width: displayWidth,
                height: displayHeight,
                child: ClipOval(
                  child: Image.asset(
                    'images/cars.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 40,
            child: FadeTransition(
              opacity: _gaadiAnimation,
              child: GradientText(
                text: 'GAADISATHI',
                fontSize: 55,
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                strokeColor: Colors.yellow,
              ),
            ),
          ),
          Positioned(
            top: 600, // Adjust the positioning as needed
            left: 60,
            child: FadeTransition(
              opacity: _adventureAnimation,
              child: GradientText(
                text: "ADVENTURE AWAITS",
                fontSize: 25,
                gradient: LinearGradient(
                  colors: [Colors.redAccent, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                strokeColor: Colors.yellow,
              ),
            ),
          ),
          Positioned(
            top: 630, // Adjust the positioning as needed
            left: 280,
            child: FadeTransition(
              opacity: _letsGoAnimation,
              child: GradientText(
                text: "LET'S GO",
                fontSize: 25,
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.blueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                strokeColor: Colors.yellow,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  final String text;
  final double fontSize;
  final LinearGradient gradient;
  final Color strokeColor;

  GradientText(
      {required this.text,
      required this.fontSize,
      required this.gradient,
      required this.strokeColor});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Yellow outline
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2
              ..color = strokeColor,
          ),
        ),
        // Gradient fill
        ShaderMask(
          shaderCallback: (bounds) => gradient.createShader(bounds),
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white, // This color is just a placeholder
            ),
          ),
        ),
      ],
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashBoard"),
      ),
      body: Center(
        child: Text("Welcome to the Dashboard!"),
      ),
    );
  }
}
