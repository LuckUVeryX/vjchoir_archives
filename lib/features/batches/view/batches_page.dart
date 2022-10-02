import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:vjchoir_archives/app/router.dart';
import 'package:vjchoir_archives/features/batches/controllers/controllers.dart';
import 'package:vjchoir_archives/widgets/widgets.dart';

class BatchesPage extends ConsumerWidget {
  const BatchesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final batches = ref.watch(batchesControllerProvider);

    return batches.when(
      error: (error, stackTrace) => Center(child: Text(error.toString())),
      loading: () => const Center(
        child: CircularProgressIndicator.adaptive(),
      ),
      data: (data) {
        return MasonryGridView.count(
          crossAxisCount: 2,
          itemCount: data.batches.length,
          itemBuilder: (context, index) {
            final batch = data.batches[index];
            return FilledCard(
              child: Stack(
                children: [
                  InkWell(
                    onTap: () => context.go('${Routes.batches}/${batch.id}'),
                    child: Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: batch.image,
                          placeholder: (_, __) =>
                              const ShimmerPlaceholder(aspectRatio: 5 / 3),
                        ),
                        ListTile(
                          title: Text(batch.id),
                          subtitle: Text(batch.name),
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
