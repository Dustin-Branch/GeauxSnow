import 'package:flutter/material.dart';
import 'package:geaux_snow/models/user.dart';
import 'package:provider/provider.dart';
import 'package:geaux_snow/profile/profile_list.dart';
import 'package:geaux_snow/profile/profile_picture.dart';
import 'package:geaux_snow/profile/user_name_email.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<LoggedInUserProvider>().user;

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ProfilePicture(),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: UserNameEmail(
                    name: user != null ? user.name : 'Loading...',
                    email: user != null ? user.email : 'Loading...',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Expanded(child: ProfileList()),
        ],
      ),
    );
  }
}
