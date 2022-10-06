import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives/features/audio/models/models.dart';

part 'audio_state.freezed.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState({
    required bool isPlaying,
    required bool isLoading,
    required AudioPositionModel audioPosition,
    required String? title,
    required String? composer,
    required String? artwork,
  }) = _AudioState;

  factory AudioState.initial() => AudioState(
        isPlaying: false,
        isLoading: false,
        audioPosition: AudioPositionModel.initial(),
        title: null,
        composer: null,
        artwork: null,
      );
}
