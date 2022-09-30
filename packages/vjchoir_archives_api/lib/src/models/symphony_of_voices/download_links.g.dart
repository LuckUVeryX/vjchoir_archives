// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadLinks _$$_DownloadLinksFromJson(Map<String, dynamic> json) =>
    _$_DownloadLinks(
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => DownloadLinksSection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DownloadLinksToJson(_$_DownloadLinks instance) =>
    <String, dynamic>{
      'sections': instance.sections?.map((e) => e.toJson()).toList(),
    };
