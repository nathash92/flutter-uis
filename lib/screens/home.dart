import 'package:flutter/material.dart';
import 'package:uis/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: SideMenuWidget(),
      body: const Center(
        child: Text('Test'),
      ),
    );
  }
}
