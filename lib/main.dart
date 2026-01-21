import 'package:flutter/material.dart';
import 'package:geaux_snow/home/home.dart';
import 'package:geaux_snow/models/stand.dart';
import 'package:geaux_snow/models/stand_theme.dart';
import 'package:geaux_snow/models/user.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LoggedInUserProvider(
            initialUser: UserDto(
              id: 1,
              name: 'Dustin Branch',
              email: 'dustin@example.com',
            ),
          ),
        ),
        ChangeNotifierProvider(create: (_) => SelectedStandProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedStand = context.watch<SelectedStandProvider>().selectedStand;
    final theme = getThemeDataForStand(selectedStand?.id);

    return MaterialApp(
      title: 'Geaux Snow',
      theme: theme,
      home: const HomePage(title: 'Home'),
    );
  }
}
