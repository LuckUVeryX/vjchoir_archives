import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_position_model.freezed.dart';

@freezed
class AudioPositionModel with _$AudioPositionModel {
  const factory AudioPositionModel({
    required Duration position,
    required Duration bufferedPosition,
    required Duration duration,
  }) = _AudioPositionModel;

  factory AudioPositionModel.initial() => const AudioPositionModel(
        position: Duration.zero,
        bufferedPosition: Duration.zero,
        duration: Duration.zero,
      );
}
