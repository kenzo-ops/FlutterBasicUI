import 'package:flutter/material.dart';

class Paddinglay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Layout Example'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        // Applying padding around the container
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // First Container with padding applied
            Container(
              width: 300,
              height: 100,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Container 1 with Padding',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20), // Add space between containers
            // Second Container with padding applied
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                width: 300,
                height: 100,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Container 2 with Padding',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add space between containers
            // Third Container with different padding
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Container(
                width: 300,
                height: 100,
                color: Colors.orange,
                child: Center(
                  child: Text(
                    'Container 3 with Padding (left & right)',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
