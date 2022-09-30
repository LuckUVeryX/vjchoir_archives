import 'package:flutter/material.dart';
import 'package:vjchoir_archives/gen/assets.gen.dart';

class VjchoirAppBar extends StatelessWidget with PreferredSizeWidget {
  const VjchoirAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: kToolbarHeight,
        child: Assets.logos.vjchoir.svg(fit: BoxFit.scaleDown),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
