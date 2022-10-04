import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/router.dart';
import 'package:vjchoir_archives/features/symphony_of_voices/controllers/controllers.dart';
import 'package:vjchoir_archives/utils/utils.dart';
import 'package:vjchoir_archives/widgets/widgets.dart';

class SymphonyOfVoicesPage extends ConsumerWidget {
  const SymphonyOfVoicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final symphonyOfVoices = ref.watch(symphonyOfVoicesControllerProvider);

    return symphonyOfVoices.buildWhen(
      data: (data) {
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: data.sov.length,
          itemBuilder: (context, index) {
            final sov = data.sov[index];
            return ImageCard(
              image: ImageWithTitle(
                image: CachedNetworkImage(
                  imageUrl: sov.artwork,
                  placeholder: (_, __) =>
                      const ShimmerPlaceholder(aspectRatio: 1),
                ),
                listTile: ListTile(
                  dense: true,
                  title: Text(sov.abbr),
                ),
              ),
              onTap: () => context.go('${Routes.sov}/${sov.id}'),
            );
          },
        );
      },
    );
  }
}
