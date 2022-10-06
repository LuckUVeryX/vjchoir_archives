import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';

export 'package:palette_generator/palette_generator.dart';

final paletteGeneratorProvider = FutureProvider.autoDispose
    .family<PaletteGenerator, ImageProvider>((ref, imageProvider) async {
  return _colorsFromImage(imageProvider);
});

Future<PaletteGenerator> _colorsFromImage(ImageProvider imageProvider) async {
  return PaletteGenerator.fromImageProvider(imageProvider);
}
