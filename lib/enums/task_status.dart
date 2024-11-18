import 'package:json_annotation/json_annotation.dart';

enum TaskStatus {
  @JsonValue('in progress')
  inProgress('in progress'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('done')
  done('done'),
  @JsonValue('deleted')
  deleted('deleted');
  const TaskStatus(this.text);

  final String text;
}
