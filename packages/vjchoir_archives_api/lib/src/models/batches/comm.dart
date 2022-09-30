import 'package:freezed_annotation/freezed_annotation.dart';

part 'comm.freezed.dart';
part 'comm.g.dart';

/// {@template comm}
/// Choir committee and its related info.
///
/// [name]s of the [Comm]s are `Exco`/`Musico`/`Welco`.
/// {@endtemplate}
@freezed
class Comm with _$Comm {
  /// {@macro comm}
  factory Comm({
    required String name,
    required String img,
    required List<String> members,
  }) = _Comm;

  /// Deserializes the given `json` into an [Comm] model.
  factory Comm.fromJson(Map<String, dynamic> json) => _$CommFromJson(json);
}
