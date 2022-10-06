import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/repertoire.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/sov_info.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/sov_links.dart';

part 'sov.freezed.dart';
part 'sov.g.dart';

/// {@template sov}
///
/// Contains metadata of the SOV.
///
/// Includes list of [Repertoire] songs, and URL [links] to the SOV.
///
/// {@endtemplate}
@Freezed(toStringOverride: false)
class Sov with _$Sov {
  /// {@macro sov}
  factory Sov({
    required int id,
    required String title,
    required String abbr,
    required SovInfo info,
    required String intro,
    required String artwork,
    required List<Repertoire> repertoire,
    required SovLinks links,
  }) = _Sov;

  /// Deserializes the given `json` into an [Sov] model.
  factory Sov.fromJson(Map<String, dynamic> json) => _$SovFromJson(json);
}
