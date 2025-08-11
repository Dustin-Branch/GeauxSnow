import 'package:flutter/material.dart';

class UserNameEmail extends StatelessWidget {
  final String name;
  final String email;

  const UserNameEmail({super.key, required this.name, required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 3.0,
      children: [
        Text(
          name,
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(email, textAlign: TextAlign.left, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
