import 'package:flutter/material.dart';
import 'constant/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.red,
        child: Stack(
          fit: StackFit.expand,
          children: [],
        ),
      ),
    );
  }
}
