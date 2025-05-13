import 'package:flutter/material.dart';

class ReelsScreen extends StatelessWidget {
  const ReelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                color: Colors.grey[900],
                child: Center(
                  child: Text(
                    'Reel $index',
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              const Positioned(
                right: 16,
                bottom: 60,
                child: Column(
                  children: [
                    Icon(Icons.favorite, color: Colors.white),
                    SizedBox(height: 16),
                    Icon(Icons.comment, color: Colors.white),
                    SizedBox(height: 16),
                    Icon(Icons.send, color: Colors.white),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
