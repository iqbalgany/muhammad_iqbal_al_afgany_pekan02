import 'package:flutter/material.dart';
import 'package:muhammad_iqbal_al_afgany_pekan02/pages/main_menu_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMenuPage(),
    );
  }
}
