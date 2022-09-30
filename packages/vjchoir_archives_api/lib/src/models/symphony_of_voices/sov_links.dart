import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/download_links.dart';
import 'package:vjchoir_archives_api/src/models/symphony_of_voices/youtube_link.dart';

part 'sov_links.freezed.dart';
part 'sov_links.g.dart';

/// {@template sovlinks}
///
/// Contains information about [YoutubeLink] and [DownloadLinks].
///
/// {@endtemplate}
@freezed
class SovLinks with _$SovLinks {
  /// {@macro sovlinks}
  const factory SovLinks({
    YoutubeLink? yt,
    DownloadLinks? dls,
  }) = _SovLinks;

  /// Deserializes the given `json` into an [SovLinks] model.
  factory SovLinks.fromJson(Map<String, dynamic> json) =>
      _$SovLinksFromJson(json);
}
