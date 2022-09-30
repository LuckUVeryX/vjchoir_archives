import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/sov.dart';

part 'symphony_of_voices.freezed.dart';
part 'symphony_of_voices.g.dart';

/// {@template symphonyofvoices}
///
/// Holds the list of SOVs so far.
///
/// {@endtemplate}
@freezed
class SymphonyOfVoices with _$SymphonyOfVoices {
  /// {@macro symphonyofvoices}
  factory SymphonyOfVoices({
    required List<Sov> sov,
  }) = _SymphonyOfVoices;

  /// Deserializes the given `json` into an [SymphonyOfVoices] model.
  factory SymphonyOfVoices.fromJson(Map<String, dynamic> json) =>
      _$SymphonyOfVoicesFromJson(json);
}
