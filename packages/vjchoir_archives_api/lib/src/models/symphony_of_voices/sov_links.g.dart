// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sov_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SovLinks _$$_SovLinksFromJson(Map<String, dynamic> json) => _$_SovLinks(
      yt: json['yt'] == null
          ? null
          : YoutubeLink.fromJson(json['yt'] as Map<String, dynamic>),
      dls: json['dls'] == null
          ? null
          : DownloadLinks.fromJson(json['dls'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SovLinksToJson(_$_SovLinks instance) =>
    <String, dynamic>{
      'yt': instance.yt?.toJson(),
      'dls': instance.dls?.toJson(),
    };
