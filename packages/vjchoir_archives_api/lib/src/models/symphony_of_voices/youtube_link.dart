import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_link.freezed.dart';
part 'youtube_link.g.dart';

/// {@template yt}
///
/// Contains the Youtube Link and its description.
///
/// [link] can be null when there does not exist a youtube link.
///
/// {@endtemplate yt}
@freezed
class YoutubeLink with _$YoutubeLink {
  /// {@macro yt}
  factory YoutubeLink({
    String? link,
    required String desc,
  }) = _YoutubeLink;

  /// Deserializes the given `json` into an [YoutubeLink] model.
  factory YoutubeLink.fromJson(Map<String, dynamic> json) =>
      _$YoutubeLinkFromJson(json);
}
