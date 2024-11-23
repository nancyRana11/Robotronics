import 'package:flutter/material.dart';

class AfterLoginScreen extends StatelessWidget {
  // Add your image paths here
  //final String mainImage = 'images/truckDelivery.png';
  final String buttonImage1 = 'images/deliverYourGoods.png';
  final String buttonImage2 = 'images/receiveOrder.png';
  final String buttonImage3 = 'images/requestRide.png';
  final String buttonImage4 = 'images/acceotRide.png';
  final String lowerImage = 'images/insurance.png';
  final String cardImage = 'images/payment3.png';
  final String bankAccountImage = 'images/payment2.png';
  final String upiImage = 'images/payment.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle dashboard button press
          },
        ),
        title: Text(''),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(child: Image.asset('images/truckDelivery.png')),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade200,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Find your rides, deliveries...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('images/deliverYourGoods.png', height: 50, width: 50),
                    Image.asset(buttonImage2, height: 50, width: 50),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(buttonImage3, height: 50, width: 50),
                  Image.asset(buttonImage4, height: 50, width: 50),
                ],
              ),
              SizedBox(height: 20),
              Center(child: Image.asset(lowerImage)),
              SizedBox(height: 20),
              Text(
                'Payment Method',
                style: TextStyle(color: Colors.blue.shade800, fontSize: 20),
              ),
              SizedBox(height: 20),
              _buildPaymentOption('Card', cardImage),
              _buildPaymentOption('Bank Account', bankAccountImage),
              _buildPaymentOption('UPI', upiImage),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPaymentOption(String text, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Image.asset(imagePath, height: 40, width: 40),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
          Spacer(),
          Radio(
            value: text,
            groupValue: null,
            onChanged: (value) {
              // Handle radio button selection
            },
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
