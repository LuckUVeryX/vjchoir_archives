// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/download_link.dart';

part 'download_links_section.freezed.dart';
part 'download_links_section.g.dart';

/// {@template downloadlinkssection}
///
/// Contains information to download the SOV in audio, video or both.
/// {@endtemplate}
@freezed
class DownloadLinksSection with _$DownloadLinksSection {
  /// {@macro downloadlinkssection}
  const factory DownloadLinksSection({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'title') required DownloadLinksType type,
    required String desc,
    List<DownloadLink>? links,
  }) = _DownloadLinksSection;

  /// Deserializes the given `json` into an [DownloadLinksSection] model.
  factory DownloadLinksSection.fromJson(Map<String, dynamic> json) =>
      _$DownloadLinksSectionFromJson(json);
}

/// Custom type for download links.
enum DownloadLinksType {
  @JsonValue('Everything')
  everything,
  @JsonValue('Video')
  video,
  @JsonValue('Audio')
  audio,
}
