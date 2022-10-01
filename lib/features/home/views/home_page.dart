import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/home/controllers/controllers.dart';
import 'package:vjchoir_archives/gen/assets.gen.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  List<Widget> buildHeaders(BuildContext context) {
    final size = context.mediaQuerySize;
    final l10n = context.l10n;
    return [
      Text(l10n.homeWelcomeTitle, style: context.textTheme.titleMedium),
      const SizedBox(height: 8),
      Assets.logos.vjchoir.svg(
        fit: BoxFit.scaleDown,
        width: size.width * 3 / 4,
        placeholderBuilder: (context) =>
            const AspectRatio(aspectRatio: 406 / 110.5),
      ),
      const SizedBox(height: 12),
      Text(l10n.homeWelcomeBody),
      const Divider(),
      Text(l10n.homeFeaturedPhotos, style: context.textTheme.titleMedium),
      const SizedBox(height: 4),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final featuredPhotos = ref.watch(featuredPhotosControllerProvider);

    final headers = buildHeaders(context);

    return CustomScrollView(
      cacheExtent: 9999, // Increase cache size to avoid rebuilding image.
      slivers: [
        const SliverAppBar(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: headers.length +
                featuredPhotos.maybeWhen<int>(
                  orElse: () => 1,
                  data: (data) => data.length,
                ),
            (context, index) {
              if (index < headers.length) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: headers[index],
                );
              }
              return featuredPhotos.when<Widget>(
                loading: () =>
                    const Center(child: CircularProgressIndicator.adaptive()),
                error: (error, stackTrace) => Text(error.toString()),
                data: (data) => CachedNetworkImage(
                  imageUrl: data[index - headers.length],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
