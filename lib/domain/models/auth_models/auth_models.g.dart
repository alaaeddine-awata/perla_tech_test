// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int? ?? 0,
      username: json['username'] as String? ?? '',
      points: json['points'] as int? ?? 0,
      phone: json['phone'] as String? ?? '',
      imagePath: json['image_path'] as String? ?? '',
      timestamp: json['timestamp'] as String? ?? '',
      userType: json['user_type'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'points': instance.points,
      'phone': instance.phone,
      'image_path': instance.imagePath,
      'timestamp': instance.timestamp,
      'user_type': instance.userType,
    };

_$_AuthDataModel _$$_AuthDataModelFromJson(Map<String, dynamic> json) =>
    _$_AuthDataModel(
      user: json['user'] == null
          ? const UserModel()
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$_AuthDataModelToJson(_$_AuthDataModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };

_$_AuthModel _$$_AuthModelFromJson(Map<String, dynamic> json) => _$_AuthModel(
      data: json['data'] == null
          ? const AuthDataModel()
          : AuthDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthModelToJson(_$_AuthModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_LocalDataModel _$$_LocalDataModelFromJson(Map<String, dynamic> json) =>
    _$_LocalDataModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => _$recordConvert(
                    e,
                    ($jsonValue) => (
                      date: $jsonValue['date'] as String,
                      text: $jsonValue['text'] as String,
                    ),
                  ))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LocalDataModelToJson(_$_LocalDataModel instance) =>
    <String, dynamic>{
      'data': instance.data
          .map((e) => {
                'date': e.date,
                'text': e.text,
              })
          .toList(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
