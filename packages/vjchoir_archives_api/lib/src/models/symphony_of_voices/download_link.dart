// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_link.freezed.dart';
part 'download_link.g.dart';

/// {@template downloadlink}
///
/// Contains the [platformType] of the
/// file hosting platform and its corresponding [link].
///
/// {@endtemplate}
@freezed
class DownloadLink with _$DownloadLink {
  /// {@macro downloadlink}
  const factory DownloadLink({
    // ignore: invalid_annotation_target
    @JsonKey(
      name: 'title',
      fromJson: _platformTypeFromJson,
      toJson: _platformTypeToJson,
    )
        required PlatformType platformType,
    String? link,
  }) = _DownloadLink;

  /// Deserializes the given `json` into an [DownloadLink] model.
  factory DownloadLink.fromJson(Map<String, dynamic> json) =>
      _$DownloadLinkFromJson(json);
}

enum PlatformType { googleDrive, dropbox, unknown }

String _platformTypeToJson(PlatformType value) {
  switch (value) {
    case PlatformType.googleDrive:
      return 'Google Drive';
    case PlatformType.dropbox:
      return 'Dropbox';
    case PlatformType.unknown:
      return '';
  }
}

PlatformType _platformTypeFromJson(String value) {
  switch (value) {
    case 'Google Drive':
      return PlatformType.googleDrive;
    case 'Dropbox':
      return PlatformType.dropbox;
    default:
      return PlatformType.unknown;
  }
}
