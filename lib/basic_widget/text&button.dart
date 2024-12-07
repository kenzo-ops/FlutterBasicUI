import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text and Button Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text widget
            Text(
              'This is text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),  // Add some space between the text and button
            
            // ElevatedButton widget
            ElevatedButton(
              onPressed: () {
                // Action when the button is pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Button Pressed!')),
                );
              },
              child: Text('This is button'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
                foregroundColor: Colors.white, // Text color
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
