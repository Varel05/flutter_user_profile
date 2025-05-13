import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Devagram'),
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text('User $index'),
                  subtitle: Text('Location $index'),
                  trailing: const Icon(Icons.more_vert),
                ),
                Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: Center(child: Text('Image $index')),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(width: 16),
                      Icon(Icons.comment),
                      SizedBox(width: 16),
                      Icon(Icons.send),
                      Spacer(),
                      Icon(Icons.bookmark_border),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
