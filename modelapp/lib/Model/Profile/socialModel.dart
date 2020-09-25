import 'package:json_annotation/json_annotation.dart';
import 'package:modelapp/Model/Profile/instaModel.dart';

part 'socialModel.g.dart';

@JsonSerializable()
class SocialModel {
  String fbPage;
  String twitter;
  InstaModel instaPage;

  SocialModel({this.fbPage, this.instaPage, this.twitter});
  factory SocialModel.fromJson(Map<String, dynamic> json) =>
      _$SocialModelFromJson(json);
  Map<String, dynamic> toJson() => _$SocialModelToJson(this);
}
