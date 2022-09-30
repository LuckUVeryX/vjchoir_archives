// ignore_for_file: avoid_print

import 'dart:io';

import 'package:github_vjchoir_archives_api/github_vjchoir_archives_api.dart';

void main() async {
  final client = GithubVjchoirArchivesApi();

  print((await client.getBatches()).toString());
  print((await client.getSymphonyOfVoices()).toString());

  exit(0);
}
