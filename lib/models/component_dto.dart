
import 'package:json_annotation/json_annotation.dart';
import 'package:tab_app/enums/component_type.dart';
import 'package:tab_app/models/params_dto.dart';

part 'component_dto.g.dart';

@JsonSerializable()
class ComponentDto {
  final ComponentType type;
  final ParamsDto params;

  ComponentDto({required this.type, required this.params});

  factory ComponentDto.fromJson(Map<String, dynamic> json) => _$ComponentDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentDtoToJson(this);
}
