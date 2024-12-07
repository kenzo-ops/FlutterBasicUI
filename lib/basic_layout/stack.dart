import 'package:flutter/material.dart';

class Stacklay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Layout'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background Circle
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(150),
              ),
            ),
            // Middle Circle
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            // Foreground Circle
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            // Positioned Text in the center
            Positioned(
              child: Text(
                'Stacked Circle',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
