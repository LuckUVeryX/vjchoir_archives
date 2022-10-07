import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vjchoir_archives_repository/vjchoir_archives_repository.dart';

part 'playlist.freezed.dart';

@Freezed(toStringOverride: false)
class Playlist with _$Playlist {
  const factory Playlist({
    required String id,
    required int index,
    required String artwork,
    required List<Repertoire> repertoires,
  }) = _Playlist;

  factory Playlist.fromSov(Sov sov, [int? index]) {
    return Playlist(
      id: sov.abbr,
      index: index ?? 0,
      artwork: sov.artwork,
      repertoires: sov.repertoire,
    );
  }
}

extension PlaylistX on Playlist {
  Repertoire get currRepertoire => repertoires[index];
}
