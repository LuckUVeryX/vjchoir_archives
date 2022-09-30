import 'package:flutter/material.dart';
import 'package:vjchoir_archives/features/home/views/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: child,
      drawer: const HomePageDrawer(),
    );
  }
}
