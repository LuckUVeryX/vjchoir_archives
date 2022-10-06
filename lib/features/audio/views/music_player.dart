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
      margin: const EdgeInsets.fromLTRB(4, 0, 4, 4),
      child: ListTile(
        dense: true,
        textColor: context.colorScheme.onPrimary,
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
        title: const Text(
          'GANADARA (Feat. IU)',
        ),
        subtitle: const Text(
          'Jay Park, IU',
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
