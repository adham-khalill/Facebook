import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Image.asset(
              'lib/Images/Logos/Facebook.png',
              height: 150,
            ),
            SizedBox(height: 100),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email or Phone',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
