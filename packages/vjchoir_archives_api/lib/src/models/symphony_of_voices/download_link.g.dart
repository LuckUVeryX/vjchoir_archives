// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadLink _$$_DownloadLinkFromJson(Map<String, dynamic> json) =>
    _$_DownloadLink(
      platformType: _platformTypeFromJson(json['title'] as String?),
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$_DownloadLinkToJson(_$_DownloadLink instance) =>
    <String, dynamic>{
      'title': _platformTypeToJson(instance.platformType),
      'link': instance.link,
    };
