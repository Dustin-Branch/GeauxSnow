import 'package:flutter/material.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.star, color: Colors.yellow),
          title: Text('Favorite Stands'),
          onTap: () {
            // Handle tap
          },
          trailing: Icon(Icons.chevron_right),
        ),
        ListTile(
          leading: Icon(Icons.history),
          title: Text('Purchases'),
          onTap: () {
            // Handle tap
          },
          trailing: Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}
