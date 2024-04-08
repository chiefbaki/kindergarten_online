// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_add_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketAddDto _$BasketAddDtoFromJson(Map<String, dynamic> json) {
  return _BasketAddDto.fromJson(json);
}

/// @nodoc
mixin _$BasketAddDto {
  int get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasketAddDtoCopyWith<BasketAddDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketAddDtoCopyWith<$Res> {
  factory $BasketAddDtoCopyWith(
          BasketAddDto value, $Res Function(BasketAddDto) then) =
      _$BasketAddDtoCopyWithImpl<$Res, BasketAddDto>;
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class _$BasketAddDtoCopyWithImpl<$Res, $Val extends BasketAddDto>
    implements $BasketAddDtoCopyWith<$Res> {
  _$BasketAddDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketAddDtoImplCopyWith<$Res>
    implements $BasketAddDtoCopyWith<$Res> {
  factory _$$BasketAddDtoImplCopyWith(
          _$BasketAddDtoImpl value, $Res Function(_$BasketAddDtoImpl) then) =
      __$$BasketAddDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class __$$BasketAddDtoImplCopyWithImpl<$Res>
    extends _$BasketAddDtoCopyWithImpl<$Res, _$BasketAddDtoImpl>
    implements _$$BasketAddDtoImplCopyWith<$Res> {
  __$$BasketAddDtoImplCopyWithImpl(
      _$BasketAddDtoImpl _value, $Res Function(_$BasketAddDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$BasketAddDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketAddDtoImpl extends _BasketAddDto {
  const _$BasketAddDtoImpl({required this.productId, required this.quantity})
      : super._();

  factory _$BasketAddDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketAddDtoImplFromJson(json);

  @override
  final int productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'BasketAddDto(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketAddDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketAddDtoImplCopyWith<_$BasketAddDtoImpl> get copyWith =>
      __$$BasketAddDtoImplCopyWithImpl<_$BasketAddDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketAddDtoImplToJson(
      this,
    );
  }
}

abstract class _BasketAddDto extends BasketAddDto {
  const factory _BasketAddDto(
      {required final int productId,
      required final int quantity}) = _$BasketAddDtoImpl;
  const _BasketAddDto._() : super._();

  factory _BasketAddDto.fromJson(Map<String, dynamic> json) =
      _$BasketAddDtoImpl.fromJson;

  @override
  int get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$BasketAddDtoImplCopyWith<_$BasketAddDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
