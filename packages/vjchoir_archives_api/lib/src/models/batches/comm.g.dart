// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comm _$$_CommFromJson(Map<String, dynamic> json) => _$_Comm(
      name: json['name'] as String,
      img: json['img'] as String,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CommToJson(_$_Comm instance) => <String, dynamic>{
      'name': instance.name,
      'img': instance.img,
      'members': instance.members,
    };
