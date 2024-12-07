import 'package:flutter/material.dart';

class IconImagewidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon and Image Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon widget
            Icon(
              Icons.home, // Choose an icon from the material icon library
              size: 50, // Icon size
              color: Colors.blue, // Icon color
            ),
            Text("This is icon"),
            SizedBox(height: 20),  // Add space between the icon and image
            
            // Image widget - Using an asset image
            Image.asset(
              'assets/manutd_crest.png',  // Add your image in the assets folder
              width: 100,  // Image width
              height: 100, // Image height
            ),
            Text("This is King Emyu Image😎"),
            SizedBox(height: 20),  // Add space between the image and the next icon
          ],
        ),
      ),
    );
  }
}
