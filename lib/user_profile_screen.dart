import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'login_screen.dart';
import 'materials.dart';
import 'theme_controller.dart';

class UserProfileScreen extends StatelessWidget {
  final themeController = Get.find<ThemeController>();

  UserProfileScreen({super.key});

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
            icon: const Icon(Icons.brightness_6),
            onPressed: themeController.toggleTheme,
          ),
        ],
      ),
      body: Column(
        children: [
          profile(context, textColor),
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
              IconButton(
                onPressed: () {
                  GetStorage().remove('username');
                  Get.off(() => const LoginScreen());
                },
                icon: const Icon(Icons.logout),
              ),
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
          galeri(context),
        ],
      ),
    );
  }

  Expanded galeri(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(2),
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
          );
        },
      ),
    );
  }
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

  Column profile(BuildContext context, Color textColor) {
    return Column(
      children: [
        const SizedBox(height: 10),
        CircleAvatar(
          radius: 40,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Icon(Icons.person, size: 60, color: textColor),
        ),
        const SizedBox(height: 8),
        Text('@user', style: TextStyle(color: textColor)),
        const SizedBox(height: 16),
      ],
    );
  }
