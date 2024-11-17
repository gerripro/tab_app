// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParamsDto _$ParamsDtoFromJson(Map<String, dynamic> json) => ParamsDto(
      size: (json['size'] as num?)?.toDouble(),
      color: json['color'] as String?,
      text: json['text'] as String?,
      paddingV: (json['paddingV'] as num?)?.toDouble(),
      paddingH: (json['paddingH'] as num?)?.toDouble(),
      inputName: json['inputName'] as String?,
    );

Map<String, dynamic> _$ParamsDtoToJson(ParamsDto instance) => <String, dynamic>{
      'size': instance.size,
      'color': instance.color,
      'text': instance.text,
      'paddingV': instance.paddingV,
      'paddingH': instance.paddingH,
      'inputName': instance.inputName,
    };
