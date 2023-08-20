// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FailureModel _$FailureModelFromJson(Map<String, dynamic> json) {
  return _FailureModel.fromJson(json);
}

/// @nodoc
mixin _$FailureModel {
  List<dynamic> get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureModelCopyWith<FailureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureModelCopyWith<$Res> {
  factory $FailureModelCopyWith(
          FailureModel value, $Res Function(FailureModel) then) =
      _$FailureModelCopyWithImpl<$Res, FailureModel>;
  @useResult
  $Res call({List<dynamic> data, String message});
}

/// @nodoc
class _$FailureModelCopyWithImpl<$Res, $Val extends FailureModel>
    implements $FailureModelCopyWith<$Res> {
  _$FailureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FailureModelCopyWith<$Res>
    implements $FailureModelCopyWith<$Res> {
  factory _$$_FailureModelCopyWith(
          _$_FailureModel value, $Res Function(_$_FailureModel) then) =
      __$$_FailureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<dynamic> data, String message});
}

/// @nodoc
class __$$_FailureModelCopyWithImpl<$Res>
    extends _$FailureModelCopyWithImpl<$Res, _$_FailureModel>
    implements _$$_FailureModelCopyWith<$Res> {
  __$$_FailureModelCopyWithImpl(
      _$_FailureModel _value, $Res Function(_$_FailureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$_FailureModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FailureModel implements _FailureModel {
  const _$_FailureModel(
      {final List<dynamic> data = const [], this.message = ''})
      : _data = data;

  factory _$_FailureModel.fromJson(Map<String, dynamic> json) =>
      _$$_FailureModelFromJson(json);

  final List<dynamic> _data;
  @override
  @JsonKey()
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'FailureModel(data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureModelCopyWith<_$_FailureModel> get copyWith =>
      __$$_FailureModelCopyWithImpl<_$_FailureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FailureModelToJson(
      this,
    );
  }
}

abstract class _FailureModel implements FailureModel {
  const factory _FailureModel(
      {final List<dynamic> data, final String message}) = _$_FailureModel;

  factory _FailureModel.fromJson(Map<String, dynamic> json) =
      _$_FailureModel.fromJson;

  @override
  List<dynamic> get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FailureModelCopyWith<_$_FailureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
