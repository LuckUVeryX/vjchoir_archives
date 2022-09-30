import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';
import 'package:vjchoir_archives/utils/utils.dart';
import 'package:vjchoir_archives/widgets/widgets.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  PageDecoration get pageDecoration => const PageDecoration();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: const VjchoirAppBar(),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            decoration: pageDecoration,
            title: l10n.landingArchivesTitle,
            body: l10n.landingArchivesBody,
            image: const _PageImage(iconData: Icons.archive_rounded),
          ),
          PageViewModel(
            decoration: pageDecoration,
            title: l10n.landingBatchesTitle,
            body: l10n.landingBatchesBody,
            image: const _PageImage(iconData: Icons.people_rounded),
          ),
          PageViewModel(
            decoration: pageDecoration,
            title: l10n.landingSymphonyOfVoicesTitle,
            body: l10n.landingSymphonyOfVoicesBody,
            image: const _PageImage(iconData: Icons.music_note_rounded),
          ),
        ],
        dotsDecorator: DotsDecorator(
          activeSize: const Size(18, 9),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        isTopSafeArea: true,
        isBottomSafeArea: true,
        showSkipButton: true,
        done: Text(l10n.landingDone),
        next: const Icon(Icons.arrow_forward_ios),
        skip: Text(l10n.landingSkip),
        onDone: () {},
      ),
    );
  }
}

class _PageImage extends StatelessWidget {
  const _PageImage({
    required this.iconData,
  });

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        iconData,
        color: context.theme.primaryColor,
        size: 60,
      ),
    );
  }
}
