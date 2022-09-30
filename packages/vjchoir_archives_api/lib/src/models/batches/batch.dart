import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/batches/comm.dart';
import 'package:vjchoir_archives_api/src/models/batches/section.dart';

part 'batch.freezed.dart';
part 'batch.g.dart';

/// {@template batch}
///
/// Contains infomation about each choir batch.
///
/// [image] contains a relative link to the batch image.
///
/// [photos] is an optional field where contains a list of relative links to
/// featured images of a batch.
///
/// {@endtemplate}
@freezed
class Batch with _$Batch {
  /// {@macro batch}
  factory Batch({
    required String id,
    required String name,
    required String image,
    required String desc,
    required List<Comm> comms,
    required List<Section> sections,
    List<String>? photos,
  }) = _Batch;

  /// Deserializes the given `json` into an [Batch] model.
  factory Batch.fromJson(Map<String, dynamic> json) => _$BatchFromJson(json);
}
