import 'package:flutter/material.dart';
import 'package:trail_app/Travel/presentation/pages/HomePage.dart';
import 'package:trail_app/Travel/presentation/pages/Register_Login_Page.dart';
import 'Travel/presentation/pages/Searchlist.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterLoginPage(),
    );
  }
}

class SearchList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SearchListPage();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}
