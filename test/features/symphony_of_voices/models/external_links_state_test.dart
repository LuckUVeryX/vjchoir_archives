import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:vjchoir_archives/features/symphony_of_voices/models/external_links_state.dart';
import 'package:vjchoir_archives_api/vjchoir_archives_api.dart';

class MockDownloadLink extends Mock implements DownloadLink {}

void main() {
  group('ExternalLinks', () {
    group('fromDownloadLink', () {
      late DownloadLink link;

      setUp(() {
        link = MockDownloadLink();
      });
      test('should return null if there is no link.', () {
        ExternalLinks? res;

        when(() => link.link).thenReturn(null);
        res = ExternalLinks.fromDownloadLink(link: link, name: '');
        expect(res, null);

        when(() => link.link).thenReturn('');
        res = ExternalLinks.fromDownloadLink(link: link, name: '');
        expect(res, null);
      });
      group('Should return the correct type of download link', () {
        setUp(() {
          when(() => link.link).thenReturn('url');
        });
        test('googleDrive', () {
          when(() => link.platformType).thenReturn(PlatformType.googleDrive);

          ExternalLinks? res;
          res = ExternalLinks.fromDownloadLink(link: link, name: '');
          expect(res, const ExternalLinks.googleDrive(name: '', url: 'url'));
        });

        test('dropbox', () {
          when(() => link.platformType).thenReturn(PlatformType.dropbox);

          ExternalLinks? res;
          res = ExternalLinks.fromDownloadLink(link: link, name: '');
          expect(res, const ExternalLinks.dropbox(name: '', url: 'url'));
        });
        test('unknown', () {
          when(() => link.platformType).thenReturn(PlatformType.unknown);

          ExternalLinks? res;
          res = ExternalLinks.fromDownloadLink(link: link, name: '');
          expect(res, const ExternalLinks.unknown(name: '', url: 'url'));
        });
      });
    });
  });
}
