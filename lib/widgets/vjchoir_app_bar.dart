import 'package:flutter/material.dart';
import 'package:vjchoir_archives/gen/assets.gen.dart';

class VjchoirAppBar extends StatelessWidget with PreferredSizeWidget {
  const VjchoirAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Assets.logos.vjchoir
          .svg(fit: BoxFit.scaleDown, height: kToolbarHeight),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
