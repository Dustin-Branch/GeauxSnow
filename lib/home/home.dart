import 'package:flutter/material.dart';
import 'package:geaux_snow/models/stand.dart';
import 'package:geaux_snow/models/user.dart';
import 'package:provider/provider.dart';

import 'recent_orders.dart';

import '../profile/profile.dart';
import 'select_stand.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TODO: dummy stands - replace with data fetching
  final List<StandDto> _dummyStands = [
    StandDto(id: 1, name: 'Downtown Stand'),
    StandDto(id: 2, name: 'Mall Stand'),
    StandDto(id: 3, name: 'Park Stand'),
    StandDto(id: 4, name: 'University Stand'),
    StandDto(id: 5, name: 'Stadium Stand'),
  ];

  void _openProfilePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ProfilePage()),
    );
  }

  void _selectStand() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SelectStand(stands: _dummyStands),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Consumer<SelectedStandProvider>(
          builder: (context, value, child) {
            final standName = value.selectedStand?.name ?? 'Find a Stand';
            return TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey.shade200,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 8,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: _selectStand,
              child: Text(
                standName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Profile',
            onPressed: _openProfilePage,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Consumer<LoggedInUserProvider>(
              builder: (context, value, child) => Padding(
                padding: const EdgeInsets.only(left: 12, top: 12, bottom: 8),
                child: Text('Hello, ${value.user?.name ?? 'Guest'}!'),
              ),
            ),
            const RecentOrders(),
          ],
        ),
      ),
    );
  }
}
