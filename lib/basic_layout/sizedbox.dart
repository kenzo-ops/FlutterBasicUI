import 'package:flutter/material.dart';

class SizedBoxlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox Layout'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox with fixed height
          SizedBox(
            height: 100,  // Set fixed height of 100
            child: Container(
              color: Colors.red,
              child: Center(
                child: Text(
                  'SizedBox Height: 100',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          // SizedBox to add vertical space
          SizedBox(height: 20),  // Add vertical space of 20 units
          
          // SizedBox with fixed width
          SizedBox(
            width: 200,  // Set fixed width of 200
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  'SizedBox Width: 200',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          // SizedBox to add horizontal space
          SizedBox(width: 20),  // Add horizontal space of 20 units
          
          // SizedBox with both width and height
          SizedBox(
            width: 150,
            height: 150,
            child: Container(
              color: Colors.orange,
              child: Center(
                child: Text(
                  'SizedBox: 150x150',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
