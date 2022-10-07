import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:vjchoir_archives/features/audio/audio.dart';
import 'package:vjchoir_archives/features/player_palette/models/models.dart';

final paletteRepositoryProvider = Provider<PaletteRepository>((ref) {
  return PaletteRepository();
});

class PaletteRepository {
  Future<PlayerPaletteModel> fromPlaylist(Playlist playlist) async {
    final palette = await PaletteGenerator.fromImageProvider(
      NetworkImage(playlist.artwork),
    );

    return PlayerPaletteModel(
      id: playlist.id,
      color: palette.mutedColor?.color.value ?? Colors.black.value,
      textColor: palette.mutedColor?.titleTextColor.value ?? Colors.white.value,
    );
  }
}
