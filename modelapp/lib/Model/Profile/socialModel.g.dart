// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socialModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocialModel _$SocialModelFromJson(Map<String, dynamic> json) {
  return SocialModel(
    fbPage: json['fbPage'] as String,
    instaPage: json['instaPage'] == null
        ? null
        : InstaModel.fromJson(json['instaPage'] as Map<String, dynamic>),
    twitter: json['twitter'] as String,
  );
}

Map<String, dynamic> _$SocialModelToJson(SocialModel instance) =>
    <String, dynamic>{
      'fbPage': instance.fbPage,
      'twitter': instance.twitter,
      'instaPage': instance.instaPage,
    };
