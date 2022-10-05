import 'package:flutter/material.dart';

class ImageWithTitle extends StatelessWidget {
  const ImageWithTitle({
    super.key,
    required this.image,
    required this.listTile,
  });

  final Widget image;
  final ListTile listTile;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [Colors.transparent, Colors.grey.shade900],
              stops: const [2 / 3, 1],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
          },
          blendMode: BlendMode.srcOver,
          child: image,
        ),
        Align(alignment: Alignment.bottomLeft, child: listTile),
      ],
    );
  }
}
