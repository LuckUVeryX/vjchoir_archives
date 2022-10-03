import 'package:flutter/material.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class FilledCard extends StatelessWidget {
  const FilledCard({
    super.key,
    required this.child,
    this.color,
  });

  final Widget child;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      color: color ?? context.colorScheme.surfaceVariant,
      child: child,
    );
  }
}
