// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentDto _$ComponentDtoFromJson(Map<String, dynamic> json) => ComponentDto(
      type: $enumDecode(_$ComponentTypeEnumMap, json['type']),
      params: ParamsDto.fromJson(json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComponentDtoToJson(ComponentDto instance) =>
    <String, dynamic>{
      'type': _$ComponentTypeEnumMap[instance.type]!,
      'params': instance.params,
    };

const _$ComponentTypeEnumMap = {
  ComponentType.text: 'textView',
  ComponentType.margin: 'margin',
  ComponentType.input: 'input',
  ComponentType.nextButton: 'nextButton',
};
