import 'package:flutter/material.dart';

class Scaffoldwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar at the top of the screen
      appBar: AppBar(
        title: Text('Appbar'),
        backgroundColor: Colors.blue,
      ),
      
      // Body of the screen, where the content will be displayed
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Body',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      
      // Floating Action Button that appears at the bottom right
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action when the button is pressed
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Floating Action Button Pressed')),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),

    );
  }
}
