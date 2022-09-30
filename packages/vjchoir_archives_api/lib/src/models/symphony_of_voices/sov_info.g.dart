// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sov_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SovInfo _$$_SovInfoFromJson(Map<String, dynamic> json) => _$_SovInfo(
      date: json['date'] as int,
      venue: json['venue'] as String,
      theme: json['theme'] as String,
      noFirstHalf: json['noFirstHalf'] as int,
      noSecondHalf: json['noSecondHalf'] as int,
    );

Map<String, dynamic> _$$_SovInfoToJson(_$_SovInfo instance) =>
    <String, dynamic>{
      'date': instance.date,
      'venue': instance.venue,
      'theme': instance.theme,
      'noFirstHalf': instance.noFirstHalf,
      'noSecondHalf': instance.noSecondHalf,
    };
