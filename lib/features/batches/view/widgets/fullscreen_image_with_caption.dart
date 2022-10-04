import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class FullscreenImageWithCaption extends StatelessWidget {
  const FullscreenImageWithCaption({
    super.key,
    required this.heroTag,
    required this.imageUrl,
    required this.caption,
    required this.title,
  });

  final String heroTag;
  final String imageUrl;
  final String caption;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Navigator.of(context).pop,
      child: Scaffold(
        appBar: AppBar(leading: const SizedBox(), title: Text(title)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: heroTag,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                caption,
                style: context.textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
