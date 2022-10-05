// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_links_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadLinksSection _$$_DownloadLinksSectionFromJson(
        Map<String, dynamic> json) =>
    _$_DownloadLinksSection(
      type: $enumDecode(_$DownloadLinksTypeEnumMap, json['title']),
      desc: json['desc'] as String,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => DownloadLink.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DownloadLinksSectionToJson(
        _$_DownloadLinksSection instance) =>
    <String, dynamic>{
      'title': _$DownloadLinksTypeEnumMap[instance.type]!,
      'desc': instance.desc,
      'links': instance.links?.map((e) => e.toJson()).toList(),
    };

const _$DownloadLinksTypeEnumMap = {
  DownloadLinksType.everything: 'Everything',
  DownloadLinksType.video: 'Video',
  DownloadLinksType.audio: 'Audio',
};
