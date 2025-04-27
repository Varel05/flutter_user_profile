import 'package:flutter/material.dart';
import 'materials.dart';

class UserProfileScreen extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const UserProfileScreen({super.key, required this.onToggleTheme});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textColor = colorScheme.onSurface;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('@user'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: onToggleTheme,
          ),
        ],
      ),
      body: Column(
        children: [
          profile(textColor),
          status(textColor),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProfileButton(text: 'Edit profile'),
              const SizedBox(width: 10),
              const ProfileButton(text: 'Share profile'),
              const SizedBox(width: 10),
              Icon(Icons.person_add, color: textColor),
            ],
          ),
          const SizedBox(height: 12),
          const ProfileButton(text: '+ Add bio'),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.grid_on, color: textColor),
              Icon(Icons.lock, color: textColor),
              Icon(Icons.favorite_border, color: textColor),
              Icon(Icons.bookmark_border, color: textColor),
            ],
          ),
          const SizedBox(height: 10),
          galeri(),
        ],
      ),
    );
  }

  Expanded galeri() {
    return Expanded(
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
    );
  }

  Column status(Color textColor) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StatColumn(number: '256', label: 'Following', color: textColor),
            const SizedBox(width: 24),
            StatColumn(number: '256.7K', label: 'Followers', color: textColor),
            const SizedBox(width: 24),
            StatColumn(number: '5.2M', label: 'Likes', color: textColor),
          ],
        ),
      ],
    );
  }

  Column profile(Color textColor) {
    return Column(
      children: [
        const SizedBox(height: 10),
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.grey[700],
          child: Icon(Icons.person, size: 60, color: textColor),
        ),
        const SizedBox(height: 8),
        Text('@user', style: TextStyle(color: textColor)),
        const SizedBox(height: 16),
      ],
    );
  }
}