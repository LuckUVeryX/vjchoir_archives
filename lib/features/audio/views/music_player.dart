import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vjchoir_archives/features/audio/controllers/controllers.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class MusicPlayer extends ConsumerWidget {
  const MusicPlayer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(audioControllerProvider);

    return Card(
      // TODO(Ryan): Use color of album to generate player color
      margin: EdgeInsets.zero,
      color: context.colorScheme.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            dense: true,
            textColor: context.colorScheme.onPrimary,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: SizedBox.square(
                dimension: 48,
                child: CachedNetworkImage(
                  imageUrl: state.artwork ??
                      'https://i.scdn.co/image/ab67616d0000b2738c0defcb336a0296eb7d704a',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            title: Text(
              state.title ?? 'GANADARA (Feat. IU)',
              maxLines: 1,
            ),
            subtitle: Text(
              maxLines: 1,
              state.composer ?? 'Jay Park, IU',
            ),
            trailing: const _MusicControls(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: _PlayerProgress(),
          ),
        ],
      ),
    );
  }
}

class _MusicControls extends ConsumerWidget {
  const _MusicControls();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(audioControllerProvider);

    return state.audioModel.maybeWhen(
      loading: CircularProgressIndicator.adaptive,
      orElse: () {
        final isPlaying =
            state.audioModel.whenOrNull(playing: () => true) ?? false;
        return Wrap(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.backward,
                color: context.colorScheme.onPrimary,
              ),
            ),
            IconButton(
              onPressed: () {
                final notifier = ref.read(audioControllerProvider.notifier);
                isPlaying ? notifier.pause() : notifier.resume();
              },
              icon: Icon(
                isPlaying ? FontAwesomeIcons.pause : FontAwesomeIcons.play,
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
        );
      },
    );
  }
}

class _PlayerProgress extends ConsumerWidget {
  const _PlayerProgress();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(audioControllerProvider);

    return LinearProgressIndicator(
      minHeight: 4,
      color: Colors.white,
      backgroundColor: Colors.white.withOpacity(0.5),
      value: state.audioPosition.duration == Duration.zero
          ? 0
          : state.audioPosition.position.inMilliseconds /
              state.audioPosition.duration.inMilliseconds,
    );
  }
}
