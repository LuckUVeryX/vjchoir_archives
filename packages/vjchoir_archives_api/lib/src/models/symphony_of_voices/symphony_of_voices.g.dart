// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symphony_of_voices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SymphonyOfVoices _$$_SymphonyOfVoicesFromJson(Map<String, dynamic> json) =>
    _$_SymphonyOfVoices(
      sov: (json['sov'] as List<dynamic>)
          .map((e) => Sov.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SymphonyOfVoicesToJson(_$_SymphonyOfVoices instance) =>
    <String, dynamic>{
      'sov': instance.sov.map((e) => e.toJson()).toList(),
    };
