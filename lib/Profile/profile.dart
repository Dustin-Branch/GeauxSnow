import 'package:flutter/material.dart';
import 'package:geaux_snow/Profile/profile_list.dart';
import 'package:geaux_snow/Profile/profile_picture.dart';
import 'package:geaux_snow/Profile/user_name_email.dart';

class UserDto {
  final String id;
  final String name; //TODO: implement NameDto concept
  final String email;

  UserDto({required this.id, required this.name, required this.email});
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserDto? _user;

  @override
  void initState() {
    super.initState();

    //TODO: implement backend command to get user
    setState(() {
      _user = UserDto(id: '1', name: 'John Doe', email: 'jd@example.com');
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    name: _user != null ? _user!.name : 'Loading...',
                    email: _user != null ? _user!.email : 'Loading...',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Expanded(child: ProfileList()),
          ),
        ],
      ),
    );
  }
}
