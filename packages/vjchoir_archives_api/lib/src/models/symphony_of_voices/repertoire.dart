import 'package:freezed_annotation/freezed_annotation.dart';

part 'repertoire.freezed.dart';
part 'repertoire.g.dart';

/// {@template repertoire}
///
/// Contains info about the Repertoire
///
/// {@endtemplate}
@freezed
class Repertoire with _$Repertoire {
  /// {@macro repertoire}
  factory Repertoire({
    required String name,
    required String composer,
    required int duration,
    required String mp3,
  }) = _Repertoire;

  /// Deserializes the given `json` into an [Repertoire] model.
  factory Repertoire.fromJson(Map<String, dynamic> json) =>
      _$RepertoireFromJson(json);
}
