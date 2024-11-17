import 'package:json_annotation/json_annotation.dart';
import 'package:tab_app/models/component_dto.dart';

part 'style_dto.g.dart';

@JsonSerializable()
class StyleDto {
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  final List<ComponentDto> components;

  StyleDto(this.backgroundColor, this.components);

  factory StyleDto.fromJson(Map<String, dynamic> json) => _$StyleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StyleDtoToJson(this);

}