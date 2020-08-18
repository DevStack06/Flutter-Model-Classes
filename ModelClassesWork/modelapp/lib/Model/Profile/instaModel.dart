import 'package:json_annotation/json_annotation.dart';

part 'instaModel.g.dart';

@JsonSerializable()
class InstaModel {
  String channelPage;
  String ownPage;

  InstaModel({this.channelPage, this.ownPage});
  factory InstaModel.fromJson(Map<String, dynamic> json) =>
      _$InstaModelFromJson(json);
  Map<String, dynamic> toJson() => _$InstaModelToJson(this);
}
