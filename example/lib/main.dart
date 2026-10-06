import 'package:flutter/material.dart';
import 'package:sv11_12_loading/sv11_12_loading.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              PopupLoading.show(context, message: 'Please Wait..');
            },
            child: Text('Show Loading'),
          ),
        ],
      ),
    );
  }
}
