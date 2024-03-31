// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_confirm_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailConfirmEvent {
  String? get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? code) confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? code)? confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? code)? confirm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetConfirm value) confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetConfirm value)? confirm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetConfirm value)? confirm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailConfirmEventCopyWith<EmailConfirmEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailConfirmEventCopyWith<$Res> {
  factory $EmailConfirmEventCopyWith(
          EmailConfirmEvent value, $Res Function(EmailConfirmEvent) then) =
      _$EmailConfirmEventCopyWithImpl<$Res, EmailConfirmEvent>;
  @useResult
  $Res call({String? code});
}

/// @nodoc
class _$EmailConfirmEventCopyWithImpl<$Res, $Val extends EmailConfirmEvent>
    implements $EmailConfirmEventCopyWith<$Res> {
  _$EmailConfirmEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetConfirmImplCopyWith<$Res>
    implements $EmailConfirmEventCopyWith<$Res> {
  factory _$$GetConfirmImplCopyWith(
          _$GetConfirmImpl value, $Res Function(_$GetConfirmImpl) then) =
      __$$GetConfirmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code});
}

/// @nodoc
class __$$GetConfirmImplCopyWithImpl<$Res>
    extends _$EmailConfirmEventCopyWithImpl<$Res, _$GetConfirmImpl>
    implements _$$GetConfirmImplCopyWith<$Res> {
  __$$GetConfirmImplCopyWithImpl(
      _$GetConfirmImpl _value, $Res Function(_$GetConfirmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
  }) {
    return _then(_$GetConfirmImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetConfirmImpl implements GetConfirm {
  const _$GetConfirmImpl({required this.code});

  @override
  final String? code;

  @override
  String toString() {
    return 'EmailConfirmEvent.confirm(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetConfirmImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetConfirmImplCopyWith<_$GetConfirmImpl> get copyWith =>
      __$$GetConfirmImplCopyWithImpl<_$GetConfirmImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? code) confirm,
  }) {
    return confirm(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? code)? confirm,
  }) {
    return confirm?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? code)? confirm,
    required TResult orElse(),
  }) {
    if (confirm != null) {
      return confirm(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetConfirm value) confirm,
  }) {
    return confirm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetConfirm value)? confirm,
  }) {
    return confirm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetConfirm value)? confirm,
    required TResult orElse(),
  }) {
    if (confirm != null) {
      return confirm(this);
    }
    return orElse();
  }
}

abstract class GetConfirm implements EmailConfirmEvent {
  const factory GetConfirm({required final String? code}) = _$GetConfirmImpl;

  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$GetConfirmImplCopyWith<_$GetConfirmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
