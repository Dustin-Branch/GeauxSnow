import 'package:flutter/material.dart';
import 'package:geaux_snow/models/address.dart';
import 'package:geaux_snow/models/stand.dart';
import 'package:geaux_snow/models/user.dart';
import 'package:provider/provider.dart';

import 'recent_orders.dart';
import 'top_picks.dart';

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
    StandDto(
      id: 1,
      name: 'Downtown Stand',
      address: AddressDto(
        street1: '120 S. Cypress St.',
        street2: '1',
        city: 'Hammond',
        state: 'LA',
        zipCode: '70403',
      ),
    ),
    StandDto(
      id: 2,
      name: 'Mall Stand',
      address: AddressDto(
        street1: '2030 Hammond Square Dr.',
        city: 'Hammond',
        state: 'LA',
        zipCode: '70403',
      ),
    ),
    StandDto(
      id: 3,
      name: 'Park Stand',
      address: AddressDto(
        street1: '400 S. Oak St.',
        city: 'Hammond',
        state: 'LA',
        zipCode: '70403',
      ),
    ),
    StandDto(
      id: 4,
      name: 'University Stand',
      address: AddressDto(
        street1: '500 W. University Ave.',
        city: 'Hammond',
        state: 'LA',
        zipCode: '70402',
      ),
    ),
    StandDto(
      id: 5,
      name: 'Stadium Stand',
      address: AddressDto(
        street1: 'Ned McGehee Dr.',
        city: 'Hammond',
        state: 'LA',
        zipCode: '70401',
      ),
    ),
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
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SelectStand(stands: _dummyStands),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeOut;

          var tween = Tween(
            begin: begin,
            end: end,
          ).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 500),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            color: Colors.white,
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
                child: Text(
                  'Hello, ${value.user?.name ?? 'Guest'}!',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
            const RecentOrders(),
            const TopPicks(),
          ],
        ),
      ),
    );
  }
}
