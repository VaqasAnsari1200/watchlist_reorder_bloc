import 'package:flutter/material.dart';
import 'features/watchlist/presentation/screens/home_screen.dart';import 'features/watchlist/presentation/screens/watchlist_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watchlist',
      theme: ThemeData.light(),
      home: const HomeScreen(),
    );
  }
}