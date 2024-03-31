// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_confirm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailConfirmState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailConfirmInitial value) initial,
    required TResult Function(EmailConfirmLoading value) loading,
    required TResult Function(EmailConfirmSuccess value) success,
    required TResult Function(EmailConfirmFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailConfirmInitial value)? initial,
    TResult? Function(EmailConfirmLoading value)? loading,
    TResult? Function(EmailConfirmSuccess value)? success,
    TResult? Function(EmailConfirmFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailConfirmInitial value)? initial,
    TResult Function(EmailConfirmLoading value)? loading,
    TResult Function(EmailConfirmSuccess value)? success,
    TResult Function(EmailConfirmFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailConfirmStateCopyWith<$Res> {
  factory $EmailConfirmStateCopyWith(
          EmailConfirmState value, $Res Function(EmailConfirmState) then) =
      _$EmailConfirmStateCopyWithImpl<$Res, EmailConfirmState>;
}

/// @nodoc
class _$EmailConfirmStateCopyWithImpl<$Res, $Val extends EmailConfirmState>
    implements $EmailConfirmStateCopyWith<$Res> {
  _$EmailConfirmStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailConfirmInitialImplCopyWith<$Res> {
  factory _$$EmailConfirmInitialImplCopyWith(_$EmailConfirmInitialImpl value,
          $Res Function(_$EmailConfirmInitialImpl) then) =
      __$$EmailConfirmInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailConfirmInitialImplCopyWithImpl<$Res>
    extends _$EmailConfirmStateCopyWithImpl<$Res, _$EmailConfirmInitialImpl>
    implements _$$EmailConfirmInitialImplCopyWith<$Res> {
  __$$EmailConfirmInitialImplCopyWithImpl(_$EmailConfirmInitialImpl _value,
      $Res Function(_$EmailConfirmInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailConfirmInitialImpl implements EmailConfirmInitial {
  const _$EmailConfirmInitialImpl();

  @override
  String toString() {
    return 'EmailConfirmState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailConfirmInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailConfirmInitial value) initial,
    required TResult Function(EmailConfirmLoading value) loading,
    required TResult Function(EmailConfirmSuccess value) success,
    required TResult Function(EmailConfirmFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailConfirmInitial value)? initial,
    TResult? Function(EmailConfirmLoading value)? loading,
    TResult? Function(EmailConfirmSuccess value)? success,
    TResult? Function(EmailConfirmFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailConfirmInitial value)? initial,
    TResult Function(EmailConfirmLoading value)? loading,
    TResult Function(EmailConfirmSuccess value)? success,
    TResult Function(EmailConfirmFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EmailConfirmInitial implements EmailConfirmState {
  const factory EmailConfirmInitial() = _$EmailConfirmInitialImpl;
}

/// @nodoc
abstract class _$$EmailConfirmLoadingImplCopyWith<$Res> {
  factory _$$EmailConfirmLoadingImplCopyWith(_$EmailConfirmLoadingImpl value,
          $Res Function(_$EmailConfirmLoadingImpl) then) =
      __$$EmailConfirmLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailConfirmLoadingImplCopyWithImpl<$Res>
    extends _$EmailConfirmStateCopyWithImpl<$Res, _$EmailConfirmLoadingImpl>
    implements _$$EmailConfirmLoadingImplCopyWith<$Res> {
  __$$EmailConfirmLoadingImplCopyWithImpl(_$EmailConfirmLoadingImpl _value,
      $Res Function(_$EmailConfirmLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailConfirmLoadingImpl implements EmailConfirmLoading {
  const _$EmailConfirmLoadingImpl();

  @override
  String toString() {
    return 'EmailConfirmState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailConfirmLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailConfirmInitial value) initial,
    required TResult Function(EmailConfirmLoading value) loading,
    required TResult Function(EmailConfirmSuccess value) success,
    required TResult Function(EmailConfirmFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailConfirmInitial value)? initial,
    TResult? Function(EmailConfirmLoading value)? loading,
    TResult? Function(EmailConfirmSuccess value)? success,
    TResult? Function(EmailConfirmFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailConfirmInitial value)? initial,
    TResult Function(EmailConfirmLoading value)? loading,
    TResult Function(EmailConfirmSuccess value)? success,
    TResult Function(EmailConfirmFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EmailConfirmLoading implements EmailConfirmState {
  const factory EmailConfirmLoading() = _$EmailConfirmLoadingImpl;
}

/// @nodoc
abstract class _$$EmailConfirmSuccessImplCopyWith<$Res> {
  factory _$$EmailConfirmSuccessImplCopyWith(_$EmailConfirmSuccessImpl value,
          $Res Function(_$EmailConfirmSuccessImpl) then) =
      __$$EmailConfirmSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EmailConfirmSuccessImplCopyWithImpl<$Res>
    extends _$EmailConfirmStateCopyWithImpl<$Res, _$EmailConfirmSuccessImpl>
    implements _$$EmailConfirmSuccessImplCopyWith<$Res> {
  __$$EmailConfirmSuccessImplCopyWithImpl(_$EmailConfirmSuccessImpl _value,
      $Res Function(_$EmailConfirmSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$EmailConfirmSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailConfirmSuccessImpl implements EmailConfirmSuccess {
  const _$EmailConfirmSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'EmailConfirmState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailConfirmSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailConfirmSuccessImplCopyWith<_$EmailConfirmSuccessImpl> get copyWith =>
      __$$EmailConfirmSuccessImplCopyWithImpl<_$EmailConfirmSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String error) failure,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailConfirmInitial value) initial,
    required TResult Function(EmailConfirmLoading value) loading,
    required TResult Function(EmailConfirmSuccess value) success,
    required TResult Function(EmailConfirmFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailConfirmInitial value)? initial,
    TResult? Function(EmailConfirmLoading value)? loading,
    TResult? Function(EmailConfirmSuccess value)? success,
    TResult? Function(EmailConfirmFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailConfirmInitial value)? initial,
    TResult Function(EmailConfirmLoading value)? loading,
    TResult Function(EmailConfirmSuccess value)? success,
    TResult Function(EmailConfirmFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EmailConfirmSuccess implements EmailConfirmState {
  const factory EmailConfirmSuccess({required final String message}) =
      _$EmailConfirmSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$EmailConfirmSuccessImplCopyWith<_$EmailConfirmSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailConfirmFailureImplCopyWith<$Res> {
  factory _$$EmailConfirmFailureImplCopyWith(_$EmailConfirmFailureImpl value,
          $Res Function(_$EmailConfirmFailureImpl) then) =
      __$$EmailConfirmFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$EmailConfirmFailureImplCopyWithImpl<$Res>
    extends _$EmailConfirmStateCopyWithImpl<$Res, _$EmailConfirmFailureImpl>
    implements _$$EmailConfirmFailureImplCopyWith<$Res> {
  __$$EmailConfirmFailureImplCopyWithImpl(_$EmailConfirmFailureImpl _value,
      $Res Function(_$EmailConfirmFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EmailConfirmFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailConfirmFailureImpl implements EmailConfirmFailure {
  const _$EmailConfirmFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'EmailConfirmState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailConfirmFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailConfirmFailureImplCopyWith<_$EmailConfirmFailureImpl> get copyWith =>
      __$$EmailConfirmFailureImplCopyWithImpl<_$EmailConfirmFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? success,
    TResult Function(String error)? failure,
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
    required TResult Function(EmailConfirmInitial value) initial,
    required TResult Function(EmailConfirmLoading value) loading,
    required TResult Function(EmailConfirmSuccess value) success,
    required TResult Function(EmailConfirmFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailConfirmInitial value)? initial,
    TResult? Function(EmailConfirmLoading value)? loading,
    TResult? Function(EmailConfirmSuccess value)? success,
    TResult? Function(EmailConfirmFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailConfirmInitial value)? initial,
    TResult Function(EmailConfirmLoading value)? loading,
    TResult Function(EmailConfirmSuccess value)? success,
    TResult Function(EmailConfirmFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class EmailConfirmFailure implements EmailConfirmState {
  const factory EmailConfirmFailure({required final String error}) =
      _$EmailConfirmFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$EmailConfirmFailureImplCopyWith<_$EmailConfirmFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
