import 'package:json_annotation/json_annotation.dart';
import 'package:tab_app/utils/serializers.dart';

part 'params_dto.g.dart';

@JsonSerializable()
class ParamsDto {
  final double? size;
  // @JsonKey(fromJson: Serializers.getColorStr)
  final String? color;
  final String? text;
  final double? paddingV;
  final double? paddingH;
  final String? inputName;

  ParamsDto(
      {this.size,
      this.color,
      this.text,
      this.paddingV,
      this.paddingH,
      this.inputName});

  factory ParamsDto.fromJson(Map<String, dynamic> json) =>
      _$ParamsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ParamsDtoToJson(this);
}
