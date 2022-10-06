import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vjchoir_archives/features/audio/controllers/controllers.dart';
import 'package:vjchoir_archives/features/audio/models/models.dart';
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
        return data.audioModel.maybeWhen(
          loading: CircularProgressIndicator.adaptive,
          orElse: () {
            final isPlaying =
                data.audioModel.whenOrNull(playing: () => true) ?? false;
            return Wrap(
              children: [
                IconButton(
                  onPressed:
                      ref.read(audioControllerProvider.notifier).seekToPrevious,
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
                  onPressed:
                      ref.read(audioControllerProvider.notifier).seekToNext,
                  icon: Icon(
                    FontAwesomeIcons.forward,
                    color: context.colorScheme.onPrimary,
                  ),
                ),
              ],
            );
          },
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
