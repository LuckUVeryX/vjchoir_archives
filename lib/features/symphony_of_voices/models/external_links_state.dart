import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives/utils/utils.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

part 'external_links_state.freezed.dart';

@freezed
class ExternalLinks with _$ExternalLinks {
  const factory ExternalLinks.youtube({
    String? name,
    required String url,
  }) = _Youtube;
  const factory ExternalLinks.googleDrive({
    String? name,
    required String url,
  }) = _GoogleDrive;
  const factory ExternalLinks.dropbox({
    String? name,
    required String url,
  }) = _Dropbox;
  const factory ExternalLinks.unknown({
    String? name,
    required String url,
  }) = _Unknown;

  static ExternalLinks? fromDownloadLink({
    required DownloadLink link,
    required String name,
  }) {
    final url = link.link;
    if (url == null || url.isEmpty) return null;

    switch (link.platformType) {
      case PlatformType.googleDrive:
        return ExternalLinks.googleDrive(name: name, url: url);
      case PlatformType.dropbox:
        return ExternalLinks.dropbox(name: name, url: url);
      case PlatformType.unknown:
        return ExternalLinks.unknown(name: name, url: url);
    }
  }
}

@freezed
class ExternalLinksState with _$ExternalLinksState {
  const factory ExternalLinksState({
    required List<ExternalLinks> links,
  }) = _ExternalLinksState;

  factory ExternalLinksState.fromSovLinks(SovLinks sovLinks) {
    final links = <ExternalLinks>[];

    if (sovLinks.yt?.link != null) {
      links.add(ExternalLinks.youtube(url: sovLinks.yt!.link!));
    }

    final downloadLinkFormats = sovLinks.dls?.sections;
    for (final format in downloadLinkFormats ?? <DownloadLinksSection>[]) {
      for (final downloadLink in format.links ?? <DownloadLink>[]) {
        final externalLink = ExternalLinks.fromDownloadLink(
          link: downloadLink,
          name: format.type.name.capitalize,
        );
        if (externalLink != null) links.add(externalLink);
      }
    }

    return ExternalLinksState(links: links);
  }
}
