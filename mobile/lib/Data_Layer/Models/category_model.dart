import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class Category {
  Category({
    required this.name,
    required this.image,
    required this.information,
  });

  String name;
  String image;
  String information;

  factory Category.fromJson(Map<String, dynamic> data) =>
      _$CategoryFromJson(data);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
