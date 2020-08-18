import 'package:json_annotation/json_annotation.dart';
import 'package:modelapp/Model/Profile/socialModel.dart';

part 'mainModel.g.dart';

@JsonSerializable()
class MainModel {
  String name;
  String channelName;
  SocialModel socialMedia;
  MainModel({this.name, this.channelName, this.socialMedia});
  factory MainModel.fromJson(Map<String, dynamic> json) =>
      _$MainModelFromJson(json);
  Map<String, dynamic> toJson() => _$MainModelToJson(this);
}
