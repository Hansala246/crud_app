import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:crud_app/add_user.dart';

// User model to hold each user's information
class User {
  final String firstName;
  final String lastName;
  final String email;

  User({required this.firstName, required this.lastName, required this.email});
}

// UserView widget to display the header and the list of users
class UserView extends StatelessWidget {
  final List<User> users = [
    User(firstName: 'John', lastName: 'Doe', email: 'john.doe@example.com'),
    User(firstName: 'Jane', lastName: 'Doe', email: 'jane.doe@example.com'),
    // Add more users here
  ];

  UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: Icon(Icons.person), // Add a user icon
            title: Text(
              '${user.firstName} ${user.lastName}',
              style: TextStyle(
                fontWeight: FontWeight.bold, // Make the name bold
                fontSize: 18, // Increase the font size
              ),
            ),
            subtitle: Text(user.email),
          );
        },
      ),
    );
  }
}
