// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StyleDto _$StyleDtoFromJson(Map<String, dynamic> json) => StyleDto(
      json['background_color'] as String,
      (json['components'] as List<dynamic>)
          .map((e) => ComponentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StyleDtoToJson(StyleDto instance) => <String, dynamic>{
      'background_color': instance.backgroundColor,
      'components': instance.components,
    };
