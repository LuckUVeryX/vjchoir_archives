import 'package:flutter/material.dart';
import 'package:vjchoir_archives/features/home/views/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const HomePageDrawer(),
    );
  }
}
