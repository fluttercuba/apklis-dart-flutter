// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'apklis_api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApklisApiResultTearOff {
  const _$ApklisApiResultTearOff();

  _SuccessApklisApiResult success(ApklisModel result) {
    return _SuccessApklisApiResult(
      result,
    );
  }

  _FailureApklisApiResult failure(ApklisErrorModel error) {
    return _FailureApklisApiResult(
      error,
    );
  }
}

/// @nodoc
const $ApklisApiResult = _$ApklisApiResultTearOff();

/// @nodoc
mixin _$ApklisApiResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApklisModel result) success,
    required TResult Function(ApklisErrorModel error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApklisModel result)? success,
    TResult Function(ApklisErrorModel error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessApklisApiResult value) success,
    required TResult Function(_FailureApklisApiResult value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessApklisApiResult value)? success,
    TResult Function(_FailureApklisApiResult value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApklisApiResultCopyWith<$Res> {
  factory $ApklisApiResultCopyWith(
          ApklisApiResult value, $Res Function(ApklisApiResult) then) =
      _$ApklisApiResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApklisApiResultCopyWithImpl<$Res>
    implements $ApklisApiResultCopyWith<$Res> {
  _$ApklisApiResultCopyWithImpl(this._value, this._then);

  final ApklisApiResult _value;
  // ignore: unused_field
  final $Res Function(ApklisApiResult) _then;
}

/// @nodoc
abstract class _$SuccessApklisApiResultCopyWith<$Res> {
  factory _$SuccessApklisApiResultCopyWith(_SuccessApklisApiResult value,
          $Res Function(_SuccessApklisApiResult) then) =
      __$SuccessApklisApiResultCopyWithImpl<$Res>;
  $Res call({ApklisModel result});
}

/// @nodoc
class __$SuccessApklisApiResultCopyWithImpl<$Res>
    extends _$ApklisApiResultCopyWithImpl<$Res>
    implements _$SuccessApklisApiResultCopyWith<$Res> {
  __$SuccessApklisApiResultCopyWithImpl(_SuccessApklisApiResult _value,
      $Res Function(_SuccessApklisApiResult) _then)
      : super(_value, (v) => _then(v as _SuccessApklisApiResult));

  @override
  _SuccessApklisApiResult get _value => super._value as _SuccessApklisApiResult;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_SuccessApklisApiResult(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as ApklisModel,
    ));
  }
}

/// @nodoc

class _$_SuccessApklisApiResult implements _SuccessApklisApiResult {
  const _$_SuccessApklisApiResult(this.result);

  @override
  final ApklisModel result;

  @override
  String toString() {
    return 'ApklisApiResult.success(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SuccessApklisApiResult &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  _$SuccessApklisApiResultCopyWith<_SuccessApklisApiResult> get copyWith =>
      __$SuccessApklisApiResultCopyWithImpl<_SuccessApklisApiResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApklisModel result) success,
    required TResult Function(ApklisErrorModel error) failure,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApklisModel result)? success,
    TResult Function(ApklisErrorModel error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessApklisApiResult value) success,
    required TResult Function(_FailureApklisApiResult value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessApklisApiResult value)? success,
    TResult Function(_FailureApklisApiResult value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessApklisApiResult implements ApklisApiResult {
  const factory _SuccessApklisApiResult(ApklisModel result) =
      _$_SuccessApklisApiResult;

  ApklisModel get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessApklisApiResultCopyWith<_SuccessApklisApiResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureApklisApiResultCopyWith<$Res> {
  factory _$FailureApklisApiResultCopyWith(_FailureApklisApiResult value,
          $Res Function(_FailureApklisApiResult) then) =
      __$FailureApklisApiResultCopyWithImpl<$Res>;
  $Res call({ApklisErrorModel error});
}

/// @nodoc
class __$FailureApklisApiResultCopyWithImpl<$Res>
    extends _$ApklisApiResultCopyWithImpl<$Res>
    implements _$FailureApklisApiResultCopyWith<$Res> {
  __$FailureApklisApiResultCopyWithImpl(_FailureApklisApiResult _value,
      $Res Function(_FailureApklisApiResult) _then)
      : super(_value, (v) => _then(v as _FailureApklisApiResult));

  @override
  _FailureApklisApiResult get _value => super._value as _FailureApklisApiResult;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_FailureApklisApiResult(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApklisErrorModel,
    ));
  }
}

/// @nodoc

class _$_FailureApklisApiResult implements _FailureApklisApiResult {
  const _$_FailureApklisApiResult(this.error);

  @override
  final ApklisErrorModel error;

  @override
  String toString() {
    return 'ApklisApiResult.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailureApklisApiResult &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$FailureApklisApiResultCopyWith<_FailureApklisApiResult> get copyWith =>
      __$FailureApklisApiResultCopyWithImpl<_FailureApklisApiResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApklisModel result) success,
    required TResult Function(ApklisErrorModel error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApklisModel result)? success,
    TResult Function(ApklisErrorModel error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuccessApklisApiResult value) success,
    required TResult Function(_FailureApklisApiResult value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuccessApklisApiResult value)? success,
    TResult Function(_FailureApklisApiResult value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureApklisApiResult implements ApklisApiResult {
  const factory _FailureApklisApiResult(ApklisErrorModel error) =
      _$_FailureApklisApiResult;

  ApklisErrorModel get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureApklisApiResultCopyWith<_FailureApklisApiResult> get copyWith =>
      throw _privateConstructorUsedError;
}
