// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/batches/controllers/controllers.dart';
import 'package:vjchoir_archives/features/batches/view/widgets/widgets.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';
import 'package:vjchoir_archives/utils/utils.dart';

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
        const SliverAppBar(floating: true),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              Text(l10n.batchTheChoir, style: textTheme.headlineLarge),
              Text(l10n.batchCommittees, style: textTheme.headlineSmall),
            ]),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(childCount: batch.comms.length,
              (context, index) {
            final comm = batch.comms[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              child: Stack(
                children: [
                  ImageWithTitle(
                    image: Hero(
                      tag: comm.name,
                      child: CachedNetworkImage(
                        imageUrl: comm.img,
                        fit: BoxFit.cover,
                      ),
                    ),
                    listTile: ListTile(title: Text(comm.name)),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<dynamic>(
                            builder: (_) => _FullscreenImageWithCaption(
                              heroTag: comm.name,
                              imageUrl: comm.img,
                              title: comm.name,
                              caption: comm.members.join(', '),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }),
        )
      ],
    );
  }
}

class _FullscreenImageWithCaption extends StatelessWidget {
  const _FullscreenImageWithCaption({
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
