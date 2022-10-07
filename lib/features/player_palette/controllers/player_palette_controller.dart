// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/dark_theme_controller.dart';
import 'package:vjchoir_archives/features/audio/audio.dart';
import 'package:vjchoir_archives/features/player_palette/models/models.dart';
import 'package:vjchoir_archives/features/player_palette/repositories/repositories.dart';
import 'package:vjchoir_archives/features/storage/storage.dart';

final playerPaletteControllerProvider =
    StateNotifierProvider<PlayerPaletteController, PlayerPaletteModel>((ref) {
  return PlayerPaletteController(
    PlayerPaletteModel.initial(darkMode: ref.read(darkThemeProvider)),
    pref: ref.watch(preferencesRepositoryProvider),
    repo: ref.read(paletteRepositoryProvider),
  );
});

class PlayerPaletteController extends StateNotifier<PlayerPaletteModel> {
  PlayerPaletteController(
    super.state, {
    required PreferencesRepository pref,
    required PaletteRepository repo,
  })  : _pref = pref,
        _repo = repo {
    _loadSavedPalettes();
  }

  final PreferencesRepository _pref;
  final PaletteRepository _repo;

  final Map<String, PlayerPaletteModel> _palettes = {};

  Future<void> onPlaylistUpdate(Playlist playlist) async {
    if (_palettes.containsKey(playlist.id)) {
      state = _palettes[playlist.id]!;
      return;
    }

    state = await _repo.fromPlaylist(playlist);
    _palettes[state.id] = state;
    _updateSavedPalettes();
  }

  void _loadSavedPalettes() {
    for (final jsonString in _pref.kAlbumPalette) {
      final model = PlayerPaletteModel.fromJson(
        jsonDecode(jsonString) as Map<String, dynamic>,
      );
      _palettes[model.id] = model;
    }
  }

  void _updateSavedPalettes() {
    _pref.kAlbumPalette =
        _palettes.values.map((e) => jsonEncode(e.toJson())).toList();
  }
}
