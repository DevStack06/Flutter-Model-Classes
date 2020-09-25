import 'package:json_annotation/json_annotation.dart';
import 'package:modelapp/Model/model.dart';

part 'listModel.g.dart';

@JsonSerializable()
class ListModel {
  List<Model> data;
  ListModel({this.data});
  factory ListModel.fromJson(Map<String, dynamic> json) =>
      _$ListModelFromJson(json);
  Map<String, dynamic> toJson() => _$ListModelToJson(this);
}
