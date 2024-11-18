// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) => TaskDto(
      taskId: json['task_id'] as String,
      createdAt: (json['created_at'] as num).toInt(),
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$TaskDtoToJson(TaskDto instance) => <String, dynamic>{
      'task_id': instance.taskId,
      'created_at': instance.createdAt,
      'status': _$TaskStatusEnumMap[instance.status]!,
    };

const _$TaskStatusEnumMap = {
  TaskStatus.inProgress: 'in progress',
  TaskStatus.failed: 'failed',
  TaskStatus.done: 'done',
  TaskStatus.deleted: 'deleted',
};
