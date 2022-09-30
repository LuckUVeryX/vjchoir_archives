import 'package:flutter/material.dart';
import 'package:vjchoir_archives/app/router.dart';
import 'package:vjchoir_archives/gen/assets.gen.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class RootPageDrawer extends StatelessWidget {
  const RootPageDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final listTileTextStyle = context.textTheme.titleMedium
        ?.copyWith(color: context.colorScheme.onPrimary);
    final listTileIconColor = context.colorScheme.onPrimary;

    final l10n = context.l10n;

    return Drawer(
      backgroundColor: context.colorScheme.primary,
      child: ListView(
        children: [
          Assets.logos.vjchoir.svg(
            fit: BoxFit.scaleDown,
            // Default width gotten from
            // https://api.flutter.dev/flutter/material/Drawer/width.html
            width: (context.theme.drawerTheme.width ?? 304) - 60,
            color: context.colorScheme.onPrimary,
          ),
          const SizedBox(height: 12),
          ListTile(
            leading: Icon(
              Icons.home_rounded,
              color: listTileIconColor,
            ),
            title: Text(
              l10n.drawerHome,
              style: listTileTextStyle,
            ),
            onTap: () {
              context.go(Routes.home);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(
              Icons.group_rounded,
              color: listTileIconColor,
            ),
            title: Text(
              l10n.drawerBatches,
              style: listTileTextStyle,
            ),
            onTap: () {
              context.go(Routes.batches);
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading: Icon(
              Icons.music_note_rounded,
              color: listTileIconColor,
            ),
            title: Text(
              l10n.drawerSymphonyOfVoices,
              style: listTileTextStyle,
            ),
            onTap: () {
              context.go(Routes.symphonyOfVoices);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
