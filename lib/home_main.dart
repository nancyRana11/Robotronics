// import 'package:flutter/material.dart';
// import 'deliver_your_goods_screen.dart';
// import 'receive_order_screen.dart';
// // Import other screens as needed
//
// class AfterLoginScreen extends StatelessWidget {
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
//   // Add your image paths here
//   final String buttonImage1 = 'images/deliverYourGoods.png';
//   final String buttonImage2 = 'images/receiveOrder.png';
//   final String buttonImage3 = 'images/requestRide.png';
//   final String buttonImage4 = 'images/acceotRide.png';
//   final String lowerImage = 'images/insurance.png';
//   final String cardImage = 'images/payment3.png';
//   final String bankAccountImage = 'images/payment2.png';
//   final String upiImage = 'images/payment.png';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             _scaffoldKey.currentState?.openDrawer(); // Open the drawer
//           },
//         ),
//         title: Text(''),
//         backgroundColor: Colors.white,
//       ),
//       drawer: CustomDrawer(), // Add the custom drawer here
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 20),
//               Center(child: Image.asset('images/truckDelivery.png')),
//               SizedBox(height: 20),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.red.shade200,
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     hintText: 'Find your rides, deliveries...',
//                     border: InputBorder.none,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => DeliverYourGoodsScreen()),
//                         );
//                       },
//                       child: Image.asset(buttonImage1, height: 150, width: 150),
//                     ),
//                     SizedBox(width: 20),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => ReceiveOrderScreen()),
//                         );
//                       },
//                       child: Image.asset(buttonImage2, height: 150, width: 150),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => DeliverYourGoodsScreen()), // Replace with appropriate screen
//                       );
//                     },
//                     child: Image.asset(buttonImage3, height: 150, width: 150),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => ReceiveOrderScreen()), // Replace with appropriate screen
//                       );
//                     },
//                     child: Image.asset(buttonImage4, height: 150, width: 150),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Center(child: Image.asset(lowerImage)),
//               SizedBox(height: 20),
//               Text(
//                 'Payment Method',
//                 style: TextStyle(color: Colors.blue.shade800, fontSize: 20),
//               ),
//               SizedBox(height: 20),
//               _buildPaymentOption('Card', cardImage),
//               _buildPaymentOption('Bank Account', bankAccountImage),
//               _buildPaymentOption('UPI', upiImage),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildPaymentOption(String text, String imagePath) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         children: [
//           Image.asset(imagePath, height: 40, width: 40),
//           SizedBox(width: 10),
//           Text(
//             text,
//             style: TextStyle(fontSize: 18),
//           ),
//           Spacer(),
//           Radio(
//             value: text,
//             groupValue: null,
//             onChanged: (value) {
//               // Handle radio button selection
//             },
//             activeColor: Colors.blue,
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CustomDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Container(
//         color: Color(0xFFFFDAB9), // Dark peach color
//         child: ListView(
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color(0xFFFFA07A), // A slightly darker peach color for the header
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CircleAvatar(
//                     backgroundImage: AssetImage('images/user.png'), // Path to user image
//                     radius: 40,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "Hello User",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.home),
//               title: Text('Home'),
//               onTap: () {
//                 // Handle Home button tap
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text('Profile'),
//               onTap: () {
//                 // Handle Profile button tap
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {
//                 // Handle Settings button tap
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.notifications),
//               title: Text('Notifications'),
//               onTap: () {
//                 // Handle Notifications button tap
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.help),
//               title: Text('Help'),
//               onTap: () {
//                 // Handle Help button tap
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.info),
//               title: Text('About'),
//               onTap: () {
//                 // Handle About button tap
//               },
//             ),
//             Divider(),
//             ListTile(
//               leading: Icon(Icons.exit_to_app),
//               title: Text('Logout'),
//               onTap: () {
//                 // Handle Logout button tap
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
