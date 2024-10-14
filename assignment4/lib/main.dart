import 'package:flutter/material.dart';

import 'LoginDetailScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: Image.network('https://img.lovepik.com/free-png/20210924/lovepik-plant-pot-png-image_401306516_wh1200.png'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    // Navigate to the login details screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginDetailScreen()),
                    );
                  },
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.black, // Button color
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26, // Shadow color
                          blurRadius: 10.0, // Shadow blur radius
                          offset: Offset(0, 5), // Shadow position
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Login', // Button text
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 18.0, // Font size
                          fontWeight: FontWeight.bold, // Font weight
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.black, // Button color
                    borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26, // Shadow color
                        blurRadius: 10.0, // Shadow blur radius
                        offset: Offset(0, 5), // Shadow position
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'Register', // Button text
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 18.0, // Font size
                        fontWeight: FontWeight.bold, // Font weight
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Add guest user action
                  },
                  child: Text(
                    'Continue as a guest',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.teal,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
