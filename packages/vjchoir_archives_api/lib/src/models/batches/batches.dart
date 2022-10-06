import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/batches/batch.dart';

part 'batches.freezed.dart';
part 'batches.g.dart';

/// {@template batches}
///
/// [Batches] provides a list of Vjchoir [Batch]es over the years.
///
/// {@endtemplate batches}
@Freezed(toStringOverride: false)
class Batches with _$Batches {
  /// {@macro batches}
  factory Batches({
    required List<Batch> batches,
  }) = _Batches;

  /// Deserializes the given `json` into an [Batches] model.
  factory Batches.fromJson(Map<String, dynamic> json) =>
      _$BatchesFromJson(json);
}
