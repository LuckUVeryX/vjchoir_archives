import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/router.dart';

final rootControllerProvider = StateProvider<RootPageTab>((ref) {
  return RootPageTab.sov;
});

enum RootPageTab { batches, sov }

extension RootPageTabX on RootPageTab {
  String get path {
    switch (this) {
      case RootPageTab.batches:
        return Routes.batches;
      case RootPageTab.sov:
        return Routes.sov;
    }
  }
}
