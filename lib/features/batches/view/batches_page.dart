import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/app/router.dart';
import 'package:vjchoir_archives/features/batches/controllers/controllers.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class BatchesPage extends ConsumerWidget {
  const BatchesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final batches = ref.watch(batchesControllerProvider);

    return batches.buildWhen(
      data: (data) {
        final cardColors = [
          context.colorScheme.primary,
          context.colorScheme.secondary,
          context.colorScheme.tertiary,
          context.colorScheme.primaryContainer,
          context.colorScheme.secondaryContainer,
          context.colorScheme.tertiaryContainer,
        ];

        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5,
          ),
          itemCount: data.batches.length,
          itemBuilder: (context, index) {
            final batch = data.batches[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              color: cardColors[index % cardColors.length],
              child: InkWell(
                onTap: () => context.go('${Routes.batches}/${batch.id}'),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: AbsorbPointer(
                        child: Transform(
                          transform: Matrix4.identity()
                            ..rotateZ(math.pi / 6)
                            ..translate(32 / 1, -24 / 1),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: CachedNetworkImage(
                              imageUrl: batch.image,
                              fit: BoxFit.cover,
                              height: context.mediaQuerySize.width / 5,
                              width: context.mediaQuerySize.width / 5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        batch.name,
                        style: context.textTheme.titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
