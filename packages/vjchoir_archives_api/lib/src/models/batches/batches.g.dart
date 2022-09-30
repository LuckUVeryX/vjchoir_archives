// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Batches _$$_BatchesFromJson(Map<String, dynamic> json) => _$_Batches(
      batches: (json['batches'] as List<dynamic>)
          .map((e) => Batch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BatchesToJson(_$_Batches instance) =>
    <String, dynamic>{
      'batches': instance.batches.map((e) => e.toJson()).toList(),
    };
