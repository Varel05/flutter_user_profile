import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('@user', style: TextStyle(color: Colors.white)),
            Icon(Icons.arrow_drop_down, color: Colors.white),
          ],
        ),
        actions: const [
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.grey[700],
            child: const Icon(Icons.person, size: 60, color: Colors.white),
          ),
          const SizedBox(height: 8),
          const Text('@user', style: TextStyle(color: Colors.white)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStatColumn('256', 'Following'),
              const SizedBox(width: 24),
              _buildStatColumn('256.7K', 'Followers'),
              const SizedBox(width: 24),
              _buildStatColumn('5.2M', 'Likes'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildButton('Edit profile'),
              const SizedBox(width: 10),
              _buildButton('Share profile'),
              const SizedBox(width: 10),
              const Icon(Icons.person_add, color: Colors.white),
            ],
          ),
          const SizedBox(height: 12),
          _buildButton('+ Add bio'),
          const SizedBox(height: 12),
          // Icon bar
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.grid_on, color: Colors.white),
              Icon(Icons.lock, color: Colors.white),
              Icon(Icons.favorite_border, color: Colors.white),
              Icon(Icons.bookmark_border, color: Colors.white),
            ],
          ),
          const SizedBox(height: 10),
          // Dummy video thumbnails
          Expanded(
            child: GridView.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(2),
                  color: Colors.grey[800],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String number, String label) {
    return Column(
      children: [
        Text(number, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        backgroundColor: Colors.grey[700],
      ),
      child: Text(text, style: const TextStyle(color: Colors.white),),
    );
  }
}