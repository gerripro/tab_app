import 'package:json_annotation/json_annotation.dart';
import 'package:tab_app/enums/task_status.dart';

part 'task_dto.g.dart';

@JsonSerializable()
class TaskDto {
  @JsonKey(name: "task_id")
  final String taskId;

  /// timestamp
  @JsonKey(name: "created_at")
  final int createdAt;
  final TaskStatus status;

  TaskDto(
      {required this.taskId, required this.createdAt, required this.status});

  factory TaskDto.fromJson(Map<String, dynamic> json) =>
      _$TaskDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDtoToJson(this);

  TaskDto copyWith({String? taskId, int? createdAt, TaskStatus? status}) =>
      TaskDto(
          taskId: taskId ?? this.taskId,
          createdAt: createdAt ?? this.createdAt,
          status: status ?? this.status);
}
