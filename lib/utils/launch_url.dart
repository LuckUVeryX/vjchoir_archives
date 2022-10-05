import 'dart:developer';

import 'package:url_launcher/url_launcher.dart' as url_launcher;

Future<void> launchUrl(String url) async {
  final uri = Uri.tryParse(url);
  if (uri == null) {
    log('Unable to parse URI');
    return;
  }

  if (!await url_launcher.launchUrl(uri)) {
    log('Unable to launch $uri');
    return;
  }
}
