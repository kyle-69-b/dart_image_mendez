import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title', style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              // Action for search
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Displaying AssetImage
          Image.asset('picture/images.jpeg'),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Edit Button
              IconButton(
                icon: Icon(Icons.edit),
                tooltip: 'Edit',
                onPressed: () {
                  // Action for edit
                },
              ),
              // Delete Button
              IconButton(
                icon: Icon(Icons.delete),
                tooltip: 'Delete',
                onPressed: () {
                  // Action for delete
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Settings Icon
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {
                // Action for settings
              },
            ),
            // Home Icon
            IconButton(
              icon: Icon(Icons.home),
              tooltip: 'Home',
              onPressed: () {
                // Action for home
              },
            ),
            // Profile Icon
            IconButton(
              icon: Icon(Icons.account_circle),
              tooltip: 'Profile',
              onPressed: () {
                // Action for profile
              },
            ),
          ],
        ),
      ),
    );
  }
}
