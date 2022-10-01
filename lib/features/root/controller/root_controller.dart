import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';

final rootControllerProvider = StateProvider<RootPageTab>((ref) {
  return RootPageTab.batches;
});

enum RootPageTab { batches, symphonyOfVoices }

extension RootPageTabX on RootPageTab {
  String appBarTitle(AppLocalizations l10n) {
    switch (this) {
      case RootPageTab.batches:
        return l10n.rootBatches;
      case RootPageTab.symphonyOfVoices:
        return l10n.rootSymphonyOfVoices;
    }
  }
}
