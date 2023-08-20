// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_path')
  String get imagePath => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String get userType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String username,
      int points,
      String phone,
      @JsonKey(name: 'image_path') String imagePath,
      String timestamp,
      @JsonKey(name: 'user_type') String userType});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? points = null,
    Object? phone = null,
    Object? imagePath = null,
    Object? timestamp = null,
    Object? userType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      int points,
      String phone,
      @JsonKey(name: 'image_path') String imagePath,
      String timestamp,
      @JsonKey(name: 'user_type') String userType});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? points = null,
    Object? phone = null,
    Object? imagePath = null,
    Object? timestamp = null,
    Object? userType = null,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {this.id = 0,
      this.username = '',
      this.points = 0,
      this.phone = '',
      @JsonKey(name: 'image_path') this.imagePath = '',
      this.timestamp = '',
      @JsonKey(name: 'user_type') this.userType = ''});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final int points;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey(name: 'image_path')
  final String imagePath;
  @override
  @JsonKey()
  final String timestamp;
  @override
  @JsonKey(name: 'user_type')
  final String userType;

  @override
  String toString() {
    return 'UserModel(id: $id, username: $username, points: $points, phone: $phone, imagePath: $imagePath, timestamp: $timestamp, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.points, points) || other.points == points) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, points, phone, imagePath, timestamp, userType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int id,
      final String username,
      final int points,
      final String phone,
      @JsonKey(name: 'image_path') final String imagePath,
      final String timestamp,
      @JsonKey(name: 'user_type') final String userType}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  int get points;
  @override
  String get phone;
  @override
  @JsonKey(name: 'image_path')
  String get imagePath;
  @override
  String get timestamp;
  @override
  @JsonKey(name: 'user_type')
  String get userType;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthDataModel _$AuthDataModelFromJson(Map<String, dynamic> json) {
  return _AuthDataModel.fromJson(json);
}

/// @nodoc
mixin _$AuthDataModel {
  UserModel get user => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDataModelCopyWith<AuthDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDataModelCopyWith<$Res> {
  factory $AuthDataModelCopyWith(
          AuthDataModel value, $Res Function(AuthDataModel) then) =
      _$AuthDataModelCopyWithImpl<$Res, AuthDataModel>;
  @useResult
  $Res call({UserModel user, String token});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthDataModelCopyWithImpl<$Res, $Val extends AuthDataModel>
    implements $AuthDataModelCopyWith<$Res> {
  _$AuthDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthDataModelCopyWith<$Res>
    implements $AuthDataModelCopyWith<$Res> {
  factory _$$_AuthDataModelCopyWith(
          _$_AuthDataModel value, $Res Function(_$_AuthDataModel) then) =
      __$$_AuthDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel user, String token});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthDataModelCopyWithImpl<$Res>
    extends _$AuthDataModelCopyWithImpl<$Res, _$_AuthDataModel>
    implements _$$_AuthDataModelCopyWith<$Res> {
  __$$_AuthDataModelCopyWithImpl(
      _$_AuthDataModel _value, $Res Function(_$_AuthDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$_AuthDataModel(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDataModel implements _AuthDataModel {
  const _$_AuthDataModel({this.user = const UserModel(), this.token = ''});

  factory _$_AuthDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDataModelFromJson(json);

  @override
  @JsonKey()
  final UserModel user;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'AuthDataModel(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDataModel &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthDataModelCopyWith<_$_AuthDataModel> get copyWith =>
      __$$_AuthDataModelCopyWithImpl<_$_AuthDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDataModelToJson(
      this,
    );
  }
}

abstract class _AuthDataModel implements AuthDataModel {
  const factory _AuthDataModel({final UserModel user, final String token}) =
      _$_AuthDataModel;

  factory _AuthDataModel.fromJson(Map<String, dynamic> json) =
      _$_AuthDataModel.fromJson;

  @override
  UserModel get user;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDataModelCopyWith<_$_AuthDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
mixin _$AuthModel {
  AuthDataModel get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
  @useResult
  $Res call({AuthDataModel data});

  $AuthDataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthDataModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthDataModelCopyWith<$Res> get data {
    return $AuthDataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthModelCopyWith<$Res> implements $AuthModelCopyWith<$Res> {
  factory _$$_AuthModelCopyWith(
          _$_AuthModel value, $Res Function(_$_AuthModel) then) =
      __$$_AuthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthDataModel data});

  @override
  $AuthDataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$_AuthModelCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$_AuthModel>
    implements _$$_AuthModelCopyWith<$Res> {
  __$$_AuthModelCopyWithImpl(
      _$_AuthModel _value, $Res Function(_$_AuthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_AuthModel(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthModel implements _AuthModel {
  const _$_AuthModel({this.data = const AuthDataModel()});

  factory _$_AuthModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthModelFromJson(json);

  @override
  @JsonKey()
  final AuthDataModel data;

  @override
  String toString() {
    return 'AuthModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthModel &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      __$$_AuthModelCopyWithImpl<_$_AuthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthModelToJson(
      this,
    );
  }
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel({final AuthDataModel data}) = _$_AuthModel;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$_AuthModel.fromJson;

  @override
  AuthDataModel get data;
  @override
  @JsonKey(ignore: true)
  _$$_AuthModelCopyWith<_$_AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalDataModel _$LocalDataModelFromJson(Map<String, dynamic> json) {
  return _LocalDataModel.fromJson(json);
}

/// @nodoc
mixin _$LocalDataModel {
  List<({String date, String text})> get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalDataModelCopyWith<LocalDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDataModelCopyWith<$Res> {
  factory $LocalDataModelCopyWith(
          LocalDataModel value, $Res Function(LocalDataModel) then) =
      _$LocalDataModelCopyWithImpl<$Res, LocalDataModel>;
  @useResult
  $Res call({List<({String date, String text})> data});
}

/// @nodoc
class _$LocalDataModelCopyWithImpl<$Res, $Val extends LocalDataModel>
    implements $LocalDataModelCopyWith<$Res> {
  _$LocalDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<({String date, String text})>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocalDataModelCopyWith<$Res>
    implements $LocalDataModelCopyWith<$Res> {
  factory _$$_LocalDataModelCopyWith(
          _$_LocalDataModel value, $Res Function(_$_LocalDataModel) then) =
      __$$_LocalDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<({String date, String text})> data});
}

/// @nodoc
class __$$_LocalDataModelCopyWithImpl<$Res>
    extends _$LocalDataModelCopyWithImpl<$Res, _$_LocalDataModel>
    implements _$$_LocalDataModelCopyWith<$Res> {
  __$$_LocalDataModelCopyWithImpl(
      _$_LocalDataModel _value, $Res Function(_$_LocalDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LocalDataModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<({String date, String text})>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalDataModel implements _LocalDataModel {
  const _$_LocalDataModel(
      {final List<({String date, String text})> data = const []})
      : _data = data;

  factory _$_LocalDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_LocalDataModelFromJson(json);

  final List<({String date, String text})> _data;
  @override
  @JsonKey()
  List<({String date, String text})> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'LocalDataModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDataModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalDataModelCopyWith<_$_LocalDataModel> get copyWith =>
      __$$_LocalDataModelCopyWithImpl<_$_LocalDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalDataModelToJson(
      this,
    );
  }
}

abstract class _LocalDataModel implements LocalDataModel {
  const factory _LocalDataModel(
      {final List<({String date, String text})> data}) = _$_LocalDataModel;

  factory _LocalDataModel.fromJson(Map<String, dynamic> json) =
      _$_LocalDataModel.fromJson;

  @override
  List<({String date, String text})> get data;
  @override
  @JsonKey(ignore: true)
  _$$_LocalDataModelCopyWith<_$_LocalDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
