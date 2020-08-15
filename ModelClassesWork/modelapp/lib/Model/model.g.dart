// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) {
  return Model(
    name: json['name'] as String,
    phonenumber: json['phonenumber'] as String,
    xyz: json['xyz'] as String,
  );
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'name': instance.name,
      'phonenumber': instance.phonenumber,
      'xyz': instance.xyz,
    };
