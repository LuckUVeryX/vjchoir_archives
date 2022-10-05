import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // TODO(Ryan): Use color of album to generate player color
      color: context.colorScheme.primary,
      margin: EdgeInsets.zero,
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: SizedBox.square(
            dimension: 48,
            child: CachedNetworkImage(
              imageUrl:
                  'https://i.scdn.co/image/ab67616d0000b2738c0defcb336a0296eb7d704a',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          'GANADARA (Feat. IU)',
          style: context.textTheme.titleMedium
              ?.copyWith(color: context.colorScheme.onPrimary),
        ),
        subtitle: Text(
          'Jay Park, IU',
          style: context.textTheme.bodySmall
              ?.copyWith(color: context.colorScheme.onPrimary),
        ),
        trailing: Wrap(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.backward,
                color: context.colorScheme.onPrimary,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.play,
                color: context.colorScheme.onPrimary,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.forward,
                color: context.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
