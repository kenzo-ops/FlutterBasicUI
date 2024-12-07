import 'package:flutter/material.dart';

class ListViewlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of sample data
    final List<String> items = [
      'Manchester United',
      'Liverpool',
      'Arsenal',
      'Chelsea',
      'Manchester City',
      'Tottenham Hotspur',
      'West Ham United',
      'Leicester City',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Football Clubs'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.sports_soccer), // Soccer ball icon
            title: Text(items[index]),
            onTap: () {
              // Action on tap (You can navigate or show a dialog)
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('You tapped'),
                    content: Text('You selected: ${items[index]}'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
