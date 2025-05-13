import 'package:flutter/material.dart';

class StatColumn extends StatelessWidget {
  final String number;
  final String label;
  final Color color;

  const StatColumn({super.key, required this.number, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: color.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}

class ProfileButton extends StatelessWidget {
  final String text;

  const ProfileButton({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}