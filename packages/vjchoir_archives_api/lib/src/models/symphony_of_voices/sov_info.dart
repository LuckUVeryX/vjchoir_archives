import 'package:freezed_annotation/freezed_annotation.dart';

part 'sov_info.freezed.dart';
part 'sov_info.g.dart';

/// {@template sovinfo}
///
/// Contains the detailed infomation about the SOV.
///
/// [date], [venue], [theme], [noFirstHalf] songs, [noSecondHalf] songs.
///
/// {@endtemplate}
@freezed
class SovInfo with _$SovInfo {
  /// {@macro sovinfo}
  const factory SovInfo({
    required int date,
    required String venue,
    required String theme,
    required int noFirstHalf,
    required int noSecondHalf,
  }) = _SovInfo;

  /// Deserializes the given `json` into an [SovInfo] model.
  factory SovInfo.fromJson(Map<String, dynamic> json) =>
      _$SovInfoFromJson(json);
}
