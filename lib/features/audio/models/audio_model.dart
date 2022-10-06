import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_model.freezed.dart';

@freezed
class AudioModel with _$AudioModel {
  const factory AudioModel.loading() = _Loading;
  const factory AudioModel.paused() = _Paused;
  const factory AudioModel.playing() = _Playing;
  const factory AudioModel.replay() = _Replay;
}
