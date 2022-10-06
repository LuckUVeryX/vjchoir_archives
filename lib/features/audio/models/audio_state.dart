import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives/features/audio/models/models.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

part 'audio_state.freezed.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState({
    required AudioModel audioModel,
    required AudioPositionModel audioPosition,
    required Playlist playlist,
  }) = _AudioState;

  factory AudioState.fromSov(Sov sov) => AudioState(
        audioModel: const AudioModel.loading(),
        audioPosition: AudioPositionModel.initial(),
        playlist: Playlist.fromSov(sov),
      );
}
