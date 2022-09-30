// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repertoire.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repertoire _$$_RepertoireFromJson(Map<String, dynamic> json) =>
    _$_Repertoire(
      name: json['name'] as String,
      composer: json['composer'] as String,
      duration: json['duration'] as int,
      mp3: json['mp3'] as String,
    );

Map<String, dynamic> _$$_RepertoireToJson(_$_Repertoire instance) =>
    <String, dynamic>{
      'name': instance.name,
      'composer': instance.composer,
      'duration': instance.duration,
      'mp3': instance.mp3,
    };
