import 'package:flutter/material.dart';
import 'package:movieapp/movies/presentation/screens/movies_screen.dart';

import 'core/services/services_locator.dart';
import 'core/utils/test.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MoviesScreen(),
    );
  }
}
