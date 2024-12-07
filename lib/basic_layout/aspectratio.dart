import 'package:flutter/material.dart';

class AspectRatiolay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aspect Ratio layout'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Example 1: AspectRatio with a 16:9 ratio
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    '16:9 Aspect Ratio',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Space between elements
            // Example 2: AspectRatio with a 1:1 ratio (Square)
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    '1:1 Aspect Ratio (Square)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Space between elements
            // Example 3: AspectRatio with a custom 3:4 ratio
          ],
        ),
      ),
    );
  }
}
