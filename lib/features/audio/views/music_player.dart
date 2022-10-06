import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vjchoir_archives/features/audio/audio.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class MusicPlayer extends ConsumerWidget {
  const MusicPlayer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(audioControllerProvider);

    return state.showWhen(
      data: (data) {
        final palette = ref
            .watch(
              paletteGeneratorProvider(NetworkImage(data.playlist.artwork)),
            )
            .whenOrNull(
              data: (data) => data.mutedColor,
            );

        return Card(
          margin: EdgeInsets.zero,
          color: palette?.color,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                dense: true,
                textColor: palette?.titleTextColor,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: SizedBox.square(
                    dimension: 48,
                    child: CachedNetworkImage(
                      imageUrl: data.playlist.artwork,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                title: Text(
                  data.playlist.currRepertoire.name,
                  maxLines: 1,
                ),
                subtitle: Text(
                  maxLines: 1,
                  data.playlist.currRepertoire.composer,
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
      },
    );
  }
}

class _MusicControls extends ConsumerWidget {
  const _MusicControls();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(audioControllerProvider);
    return state.showWhen(
      data: (data) {
        final palette = ref
            .watch(
              paletteGeneratorProvider(NetworkImage(data.playlist.artwork)),
            )
            .whenOrNull(
              data: (data) => data.mutedColor,
            );

        final isPlaying = data.audioModel.maybeWhen(
          orElse: () => false,
          playing: () => true,
        );
        return Wrap(
          children: [
            IconButton(
              onPressed:
                  ref.read(audioControllerProvider.notifier).seekToPrevious,
              icon: Icon(
                FontAwesomeIcons.backward,
                color: palette?.titleTextColor,
              ),
            ),
            IconButton(
              onPressed: data.audioModel.maybeWhen(
                loading: () => null,
                orElse: () => () {
                  final notifier = ref.read(audioControllerProvider.notifier);
                  isPlaying ? notifier.pause() : notifier.resume();
                },
              ),
              icon: data.audioModel.maybeWhen(
                loading: () => SizedBox.square(
                  dimension: 24,
                  child: CircularProgressIndicator(
                    color: palette?.titleTextColor,
                  ),
                ),
                orElse: () => Icon(
                  isPlaying ? FontAwesomeIcons.pause : FontAwesomeIcons.play,
                  color: palette?.titleTextColor,
                ),
              ),
            ),
            IconButton(
              onPressed: ref.read(audioControllerProvider.notifier).seekToNext,
              icon: Icon(
                FontAwesomeIcons.forward,
                color: palette?.titleTextColor,
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

    return state.showWhen(
      data: (data) {
        return LinearProgressIndicator(
          minHeight: 4,
          color: Colors.white,
          backgroundColor: Colors.white.withOpacity(0.5),
          value: data.audioPosition.duration == Duration.zero
              ? 0
              : data.audioPosition.position.inMilliseconds /
                  data.audioPosition.duration.inMilliseconds,
        );
      },
    );
  }
}
