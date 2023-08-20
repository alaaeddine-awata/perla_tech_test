import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/resources/strings_manager.dart';
part 'failure.g.dart';
part 'failure.freezed.dart';

@freezed
class FailureModel with _$FailureModel {
  const factory FailureModel({
    @Default([]) List data,
    @Default('') String message,
  }) = _FailureModel;

  factory FailureModel.fromJson(Map<String, dynamic> json) =>
      _$FailureModelFromJson(json);
}

Map<String, String> defaultError = {
  'message': AppStrings().defaultError
};