// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sov.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sov _$$_SovFromJson(Map<String, dynamic> json) => _$_Sov(
      id: json['id'] as int,
      title: json['title'] as String,
      abbr: json['abbr'] as String,
      info: SovInfo.fromJson(json['info'] as Map<String, dynamic>),
      intro: json['intro'] as String,
      artwork: json['artwork'] as String,
      repertoire: (json['repertoire'] as List<dynamic>)
          .map((e) => Repertoire.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: SovLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SovToJson(_$_Sov instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'abbr': instance.abbr,
      'info': instance.info.toJson(),
      'intro': instance.intro,
      'artwork': instance.artwork,
      'repertoire': instance.repertoire.map((e) => e.toJson()).toList(),
      'links': instance.links.toJson(),
    };
