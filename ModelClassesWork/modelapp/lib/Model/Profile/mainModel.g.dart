// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mainModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainModel _$MainModelFromJson(Map<String, dynamic> json) {
  return MainModel(
    name: json['name'] as String,
    channelName: json['channelName'] as String,
    socialMedia: json['socialMedia'] == null
        ? null
        : SocialModel.fromJson(json['socialMedia'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MainModelToJson(MainModel instance) => <String, dynamic>{
      'name': instance.name,
      'channelName': instance.channelName,
      'socialMedia': instance.socialMedia,
    };
