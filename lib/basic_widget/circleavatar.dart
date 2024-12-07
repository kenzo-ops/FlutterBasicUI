import 'package:flutter/material.dart';

class CircleAvatarwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar Widget'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50, // Size of the circle
              backgroundImage: NetworkImage('https://www.example.com/profile_image.png'), // Network image URL
            ),
            SizedBox(height: 20), // Add space between the avatars
            
            // CircleAvatar with an asset image
            CircleAvatar(
              radius: 50, // Size of the circle
              backgroundImage: AssetImage('assets/profile_image.png'), // Asset image
            ),
            SizedBox(height: 20), // Add space between the avatars
            
            // CircleAvatar with initials
            CircleAvatar(
              radius: 50, // Size of the circle
              backgroundColor: Colors.blue, // Background color
              child: Text(
                'AB', // Initials or text inside the avatar
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 24, // Text size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
