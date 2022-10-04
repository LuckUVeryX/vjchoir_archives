import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
        return MasonryGridView.count(
          crossAxisCount: 2,
          itemCount: data.sov.length,
          itemBuilder: (context, index) {
            final sov = data.sov[index];
            return FilledCard(
              child: Stack(
                children: [
                  InkWell(
                    onTap: () => context.go('${Routes.sov}/${sov.id}'),
                    child: Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: sov.artwork,
                          placeholder: (_, __) =>
                              const ShimmerPlaceholder(aspectRatio: 1),
                        ),
                        ListTile(
                          title: Text(sov.abbr),
                          subtitle: Text(sov.title),
                          dense: true,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
