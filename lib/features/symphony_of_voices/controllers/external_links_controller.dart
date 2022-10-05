import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/symphony_of_voices/models/models.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

final externalLinksControllerProvider = StateNotifierProvider.autoDispose
    .family<ExternalLinksController, ExternalLinksState, SovLinks>(
  (ref, sovLinks) => ExternalLinksController(sovLinks),
);

class ExternalLinksController extends StateNotifier<ExternalLinksState> {
  ExternalLinksController(SovLinks sovLinks)
      : super(ExternalLinksState.fromSovLinks(sovLinks));

  Iterable<ExternalLinks> get youtubeLinks {
    return state.links.where(
      (element) =>
          element.maybeMap(orElse: () => false, youtube: (value) => true),
    );
  }

  Iterable<ExternalLinks> get googleDriveLinks {
    return state.links.where(
      (element) =>
          element.maybeMap(orElse: () => false, googleDrive: (value) => true),
    );
  }

  Iterable<ExternalLinks> get dropboxLinks {
    return state.links.where(
      (element) =>
          element.maybeMap(orElse: () => false, dropbox: (value) => true),
    );
  }

  Iterable<ExternalLinks> get unknownLinks {
    return state.links.where(
      (element) =>
          element.maybeMap(orElse: () => false, unknown: (value) => true),
    );
  }
}
