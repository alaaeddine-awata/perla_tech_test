import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_models.g.dart';
part 'auth_models.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @Default(0) int id,
    @Default('') String username,
    @Default(0) int points,
    @Default('') String phone,
    @Default('') @JsonKey(name: 'image_path') String imagePath,
    @Default('') String timestamp,
    @Default('') @JsonKey(name: 'user_type') String userType,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class AuthDataModel with _$AuthDataModel {
  const factory AuthDataModel({
    @Default(UserModel()) UserModel user,
    @Default('') String token,
  }) = _AuthDataModel;

  factory AuthDataModel.fromJson(Map<String, dynamic> json) =>
      _$AuthDataModelFromJson(json);
}

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    @Default(AuthDataModel()) AuthDataModel data,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}

@freezed
class LocalDataModel with _$LocalDataModel {
  const factory LocalDataModel({
    @Default([]) List<({String text, String date})> data,
  }) = _LocalDataModel;

  factory LocalDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocalDataModelFromJson(json);
}
