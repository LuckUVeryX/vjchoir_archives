import 'package:flutter/material.dart';
import 'package:vjchoir_archives/features/root/views/widgets/widgets.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      drawer: const RootPageDrawer(),
    );
  }
}
