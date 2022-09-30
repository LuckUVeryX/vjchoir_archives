import 'package:flutter/material.dart';
import 'package:vjchoir_archives/gen/assets.gen.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final listTileTextStyle = context.textTheme.titleMedium
        ?.copyWith(color: context.colorScheme.onPrimary);
    final listTileIconColor = context.colorScheme.onPrimary;
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
              'HOME',
              style: listTileTextStyle,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.group_rounded,
              color: listTileIconColor,
            ),
            title: Text(
              'BATCHES',
              style: listTileTextStyle,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.music_note_rounded,
              color: listTileIconColor,
            ),
            title: Text(
              'SYMPHONY OF VOICES',
              style: listTileTextStyle,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
