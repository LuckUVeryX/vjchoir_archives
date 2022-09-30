import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/download_links_section.dart';

part 'download_links.freezed.dart';
part 'download_links.g.dart';

/// {@template downloadlinks}
///
/// Wrapper around each [DownloadLinksSection].
///
/// {@endtemplate}
@freezed
class DownloadLinks with _$DownloadLinks {
  /// {@macro downloadlinks}
  const factory DownloadLinks({
    List<DownloadLinksSection>? sections,
  }) = _DownloadLinks;

  /// Deserializes the given `json` into an [DownloadLinks] model.
  factory DownloadLinks.fromJson(Map<String, dynamic> json) =>
      _$DownloadLinksFromJson(json);
}
