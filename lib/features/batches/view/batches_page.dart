import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
          ),
          itemCount: data.batches.length,
          itemBuilder: (context, index) {
            final batch = data.batches[index];
            return FilledCard(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: CachedNetworkImage(
                            imageUrl: batch.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(batch.id),
                        subtitle: Text(batch.name),
                        dense: true,
                      ),
                    ],
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        // TODO(Ryan): Navigate to sub batch page
                      },
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
