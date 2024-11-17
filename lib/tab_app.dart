import 'package:flutter/material.dart';
import 'package:tab_app/screens/tab_screen.dart';

class TabApp extends StatelessWidget {
  const TabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TabScreen(),);
  }
}
