import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vjchoir_archives/app/router.dart';
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
      body: Padding(
        // Account space for music player
        padding: const EdgeInsets.only(bottom: 72),
        child: child,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: ref.watch(rootControllerProvider).index,
        onDestinationSelected: (index) {
          final tab = RootPageTab.values[index];
          ref.read(rootControllerProvider.notifier).state = tab;
          context.go(tab.path);
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(FontAwesomeIcons.peopleGroup),
            label: l10n.rootBatches,
          ),
          NavigationDestination(
            icon: const Icon(FontAwesomeIcons.recordVinyl),
            label: l10n.rootSOV,
          ),
        ],
      ),
      bottomSheet: const MusicPlayer(),
    );
  }
}
