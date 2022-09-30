import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/download_link.dart';

part 'download_links_section.freezed.dart';
part 'download_links_section.g.dart';

/// {@template downloadlinkssection}
///
/// Contains information to download the SOV in audio, video or both.
///
/// [title] can be either `Everything/Video/Audio`.
///
/// {@endtemplate}
@freezed
class DownloadLinksSection with _$DownloadLinksSection {
  /// {@macro downloadlinkssection}
  const factory DownloadLinksSection({
    required String title,
    required String desc,
    List<DownloadLink>? links,
  }) = _DownloadLinksSection;

  /// Deserializes the given `json` into an [DownloadLinksSection] model.
  factory DownloadLinksSection.fromJson(Map<String, dynamic> json) =>
      _$DownloadLinksSectionFromJson(json);
}
