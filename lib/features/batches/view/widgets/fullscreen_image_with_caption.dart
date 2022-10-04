// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/batches/controllers/controllers.dart';
import 'package:vjchoir_archives/utils/utils.dart';

class FullscreenImageWithCaption extends ConsumerWidget {
  const FullscreenImageWithCaption({
    super.key,
    required this.batchId,
    required this.commName,
  });

  final String batchId;
  final String commName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final batches = ref.watch(batchesControllerProvider);

    return batches.buildWhen(
      data: (data) {
        final comm = data.batches
            .firstWhere((element) => element.id == batchId)
            .comms
            .firstWhere((element) => element.name == commName);

        return Scaffold(
          appBar: AppBar(
            title: Text(comm.name),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: commName,
                child: CachedNetworkImage(
                  imageUrl: comm.img,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  comm.members.join(', '),
                  style: context.textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
