import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/root/controller/controller.dart';
import 'package:vjchoir_archives/features/root/views/widgets/widgets.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';

class RootPage extends ConsumerWidget {
  const RootPage({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(rootControllerProvider).appBarTitle(l10n)),
      ),
      body: child,
      drawer: const RootPageDrawer(),
    );
  }
}
