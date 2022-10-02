// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
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
      body: batches.when(
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: CircularProgressIndicator.adaptive,
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

  static const sliverPadding = EdgeInsets.symmetric(horizontal: 12);

  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final l10n = context.l10n;

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(batch.name),
          floating: true,
        ),
        SliverPadding(
          padding: sliverPadding,
          sliver: SliverToBoxAdapter(
            child: Text(l10n.batchTheChoir, style: textTheme.titleLarge),
          ),
        ),
        SliverPadding(
          padding: sliverPadding,
          sliver: SliverToBoxAdapter(
            child: Text(
              l10n.batchCommittees,
              style: textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: batch.comms.length,
            (context, index) {
              final comm = batch.comms[index];
              return Column(
                children: [
                  Text(
                    comm.name,
                    style: textTheme.bodyLarge,
                  ),
                  CachedNetworkImage(
                    imageUrl: comm.img,
                    placeholder: (_, __) =>
                        const ShimmerPlaceholder(aspectRatio: 14 / 9),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      comm.members.join(', '),
                      style: textTheme.labelSmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SliverPadding(
          padding: sliverPadding,
          sliver: SliverToBoxAdapter(
            child: Text(
              l10n.batchMembers,
              style: textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SliverMasonryGrid.count(
          crossAxisCount: 2,
          itemBuilder: (context, index) {
            final section = batch.sections[index];
            return FilledCard(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        section.name,
                        style: textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 4),
                    for (var i = 0; i < section.members.length; i++) ...[
                      if (i == 0) ...[
                        Row(
                          children: [
                            Flexible(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  section.members[i],
                                  style: textTheme.labelLarge,
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              decoration: ShapeDecoration(
                                shape: const StadiumBorder(),
                                color: context.colorScheme.primary,
                              ),
                              child: Center(
                                child: Text(
                                  'SL',
                                  style: textTheme.labelSmall?.copyWith(
                                    color: context.colorScheme.onPrimary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ] else ...[
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            section.members[i],
                            style: textTheme.labelLarge,
                          ),
                        ),
                      ],
                    ]
                  ],
                ),
              ),
            );
          },
          childCount: batch.sections.length,
        ),
        if (batch.photos != null)
          SliverToBoxAdapter(
            child: _PhotoCarousel(photos: batch.photos!),
          )
      ],
    );
  }
}

class _PhotoCarousel extends StatefulWidget {
  const _PhotoCarousel({
    required this.photos,
  });

  final List<String> photos;

  @override
  State<_PhotoCarousel> createState() => _PhotoCarouselState();
}

class _PhotoCarouselState extends State<_PhotoCarousel> {
  int page = 999;

  final controller = PageController(initialPage: 999);
  Timer? timer;

  @override
  void initState() {
    super.initState();
    _resetPageScroll();
  }

  void _resetPageScroll() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      page++;
      controller.animateToPage(
        page,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.mediaQuerySize.width * 3 / 4,
      width: context.mediaQuerySize.width,
      child: Stack(
        alignment: const Alignment(0, 0.9),
        children: [
          PageView.builder(
            controller: controller,
            itemBuilder: (context, index) => CachedNetworkImage(
              imageUrl: widget.photos[index % widget.photos.length],
              fit: BoxFit.cover,
            ),
            onPageChanged: (value) {
              page = value;
              _resetPageScroll();
            },
          ),
          SmoothPageIndicator(
            controller: controller,
            count: widget.photos.length,
            effect: WormEffect(
              activeDotColor: context.colorScheme.primary,
              dotHeight: 12,
              dotWidth: 12,
            ),
          ),
        ],
      ),
    );
  }
}
