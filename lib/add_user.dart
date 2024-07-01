import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add User'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First name',
              ),
            ),

            const SizedBox(height: 20),
            // Add some space (20 pixels
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),

            const SizedBox(height: 20),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _firstNameController.clear();
                    _lastNameController.clear();
                    _emailController.clear();
                  },
                  child: const Text('Cancel'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50), // Set the button's size
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Create'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50), // Set the button's size
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
