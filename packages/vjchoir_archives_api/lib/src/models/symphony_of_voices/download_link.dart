import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_link.freezed.dart';
part 'download_link.g.dart';

/// {@template downloadlink}
///
/// Contains the [title] of the
/// file hosting platform and its corresponding [link].
///
/// {@endtemplate}
@freezed
class DownloadLink with _$DownloadLink {
  /// {@macro downloadlink}
  const factory DownloadLink({
    String? title,
    String? link,
  }) = _DownloadLink;

  /// Deserializes the given `json` into an [DownloadLink] model.
  factory DownloadLink.fromJson(Map<String, dynamic> json) =>
      _$DownloadLinkFromJson(json);
}
