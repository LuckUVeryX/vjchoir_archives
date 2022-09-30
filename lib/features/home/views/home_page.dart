import 'package:flutter/material.dart';
import 'package:vjchoir_archives/gen/assets.gen.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = context.mediaQuerySize;
    final l10n = context.l10n;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      children: [
        Text(l10n.homeWelcomeTitle, style: context.textTheme.titleMedium),
        const SizedBox(height: 8),
        Assets.logos.vjchoir
            .svg(fit: BoxFit.scaleDown, width: size.width * 3 / 4),
        const SizedBox(height: 12),
        Text(l10n.homeWelcomeBody),
        const Divider(),
        Text(l10n.homeFeaturedPhotos, style: context.textTheme.titleMedium),
        // TODO(Ryan): Featured photos.
      ],
    );
  }
}
