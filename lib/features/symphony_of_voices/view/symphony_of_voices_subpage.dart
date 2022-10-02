// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vjchoir_archives/features/symphony_of_voices/controllers/controllers.dart';
import 'package:vjchoir_archives/l10n/l10n.dart';
import 'package:vjchoir_archives/utils/utils.dart';
import 'package:vjchoir_archives/widgets/widgets.dart';

class SymphonyOfVoicesSubpage extends ConsumerWidget {
  const SymphonyOfVoicesSubpage({
    super.key,
    required this.sovId,
  });

  final int sovId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sov = ref.watch(symphonyOfVoicesControllerProvider);

    return Scaffold(
      body: sov.when(
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: CircularProgressIndicator.adaptive,
        data: (data) {
          return _SymphonyOfVoicesSubPageView(
            sov: data.sov.firstWhere((e) => e.id == sovId),
          );
        },
      ),
    );
  }
}

class _SymphonyOfVoicesSubPageView extends StatelessWidget {
  const _SymphonyOfVoicesSubPageView({
    required this.sov,
  });

  final Sov sov;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = context.textTheme;

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          actions: [
            IconButton(
              onPressed: () {
                // TODO(Ryan): Show links
              },
              icon: const Icon(Icons.link_rounded),
            )
          ],
          title: _InvisibleExpandedHeader(
            child: Text(
              sov.abbr,
              style: context.theme.appBarTheme.titleTextStyle,
            ),
          ),
          pinned: true,
          floating: true,
          expandedHeight: context.mediaQuerySize.width,
          flexibleSpace: FlexibleSpaceBar(
            background: CachedNetworkImage(
              imageUrl: sov.artwork,
              fit: BoxFit.cover,
              placeholder: (_, __) => const ShimmerPlaceholder(aspectRatio: 1),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 12, 8, 0),
            child: Text(l10n.sovRepertoire, style: textTheme.headlineSmall),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: sov.repertoire.length,
            (context, index) {
              final repertoire = sov.repertoire[index];
              return ListTile(
                onTap: () {
                  // TODO(Ryan): Play music
                },
                title: Text(repertoire.name),
                subtitle: Text(l10n.sovRepertoireComposer(repertoire.composer)),
              );
            },
          ),
        ),
      ],
    );
  }
}

/// https://stackoverflow.com/questions/64261905/flutter-hide-title-of-silver-app-bar-when-expanded
class _InvisibleExpandedHeader extends StatefulWidget {
  final Widget child;
  const _InvisibleExpandedHeader({
    required this.child,
  });
  @override
  _InvisibleExpandedHeaderState createState() {
    return _InvisibleExpandedHeaderState();
  }
}

class _InvisibleExpandedHeaderState extends State<_InvisibleExpandedHeader> {
  ScrollPosition? _position;
  bool? _visible;

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }

  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }

  void _removeListener() {
    _position?.removeListener(_positionListener);
  }

  void _positionListener() {
    final settings =
        context.dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
    final visible =
        settings == null || settings.currentExtent <= settings.minExtent;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: widget.child,
    );
  }

  double get opacity => (_visible ?? false) ? 1 : 0;
}
