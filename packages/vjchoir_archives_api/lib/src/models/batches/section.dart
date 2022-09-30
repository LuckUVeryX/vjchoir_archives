import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/batches/batch.dart' show Batch;

part 'section.freezed.dart';
part 'section.g.dart';

/// {@template section}
/// Conatins information about a specific SATB section for a [Batch].
///
/// [name]s of each section are `Sopranos`/`Altos`/`Tenors`/`Basses`.
///
/// [members] contains the list of names of the members in this [Section]
/// for the particular [Batch].
/// {@endtemplate}
@freezed
class Section with _$Section {
  /// {@macro section}
  factory Section({
    required String name,
    required List<String> members,
  }) = _Section;

  /// Deserializes the given `json` into an [Section] model.
  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}
