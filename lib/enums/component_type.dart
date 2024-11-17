import 'package:json_annotation/json_annotation.dart';

enum ComponentType {
  @JsonValue('textView')
  text,
  @JsonValue('margin')
  margin,
  @JsonValue('input')
  input,
  @JsonValue('nextButton')
  nextButton
}
