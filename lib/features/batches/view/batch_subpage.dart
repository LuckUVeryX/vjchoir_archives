import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:vjchoir_archives/app/router.dart';
import 'package:vjchoir_archives/features/batches/controllers/controllers.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';
import 'package:vjchoir_archives/utils/utils.dart';
import 'package:vjchoir_archives/widgets/widgets.dart';

class BatchSubpage extends ConsumerWidget {
  const BatchSubpage({
    super.key,
    required this.batchId,
  });

  final String batchId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final batches = ref.watch(batchesControllerProvider);

    return Scaffold(
      body: batches.buildWhen(
        data: (data) {
          return _BatchSubpageView(
            batch: data.batches.firstWhere((e) => e.id == batchId),
          );
        },
      ),
    );
  }
}

class _BatchSubpageView extends StatelessWidget {
  const _BatchSubpageView({
    required this.batch,
  });

  final Batch batch;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = context.textTheme;

    return CustomScrollView(
      slivers: [
        SliverAppBar(floating: true, title: Text(batch.name)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              Text(l10n.batchTheChoir, style: textTheme.headlineSmall),
              Card(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.zero,
                child: CachedNetworkImage(imageUrl: batch.image),
              ),
              const SizedBox(height: 12),
              Text(l10n.batchCommittees, style: textTheme.headlineSmall),
            ]),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(childCount: batch.comms.length,
                (context, index) {
              final comm = batch.comms[index];
              return ImageCard(
                image: ImageWithTitle(
                  image: Hero(
                    tag: comm.name,
                    child: CachedNetworkImage(
                      imageUrl: comm.img,
                      fit: BoxFit.cover,
                      placeholder: (_, __) =>
                          const ShimmerPlaceholder(aspectRatio: 1),
                    ),
                  ),
                  listTile: ListTile(title: Text(comm.name)),
                ),
                onTap: () =>
                    context.go('${Routes.batches}/${batch.id}/${comm.name}'),
              );
            }),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
          sliver: SliverToBoxAdapter(
            child: Text(l10n.batchMembers, style: textTheme.headlineSmall),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 40),
          sliver: SliverMasonryGrid(
            delegate: SliverChildBuilderDelegate(
                childCount: batch.sections.length, (context, index) {
              final section = batch.sections[index];
              return Card(
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      section.name,
                      style: textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    for (var i = 0; i < section.members.length; i++) ...[
                      ListTile(
                        visualDensity: VisualDensity.compact,
                        dense: true,
                        title: Text(
                          section.members[i],
                          style: textTheme.labelSmall,
                        ),
                        trailing: i == 0 ? const _SlLabel() : null,
                      ),
                    ],
                  ],
                ),
              );
            }),
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          ),
        )
      ],
    );
  }
}

class _SlLabel extends StatelessWidget {
  const _SlLabel();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 2,
      ),
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: context.colorScheme.primary,
      ),
      child: Text(
        'SL',
        style: context.textTheme.labelSmall?.copyWith(
          color: context.colorScheme.onPrimary,
        ),
      ),
    );
  }
}
