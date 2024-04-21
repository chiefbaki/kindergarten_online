// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteCardDto _$DeleteCardDtoFromJson(Map<String, dynamic> json) {
  return _DeleteCardDto.fromJson(json);
}

/// @nodoc
mixin _$DeleteCardDto {
  int get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteCardDtoCopyWith<DeleteCardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteCardDtoCopyWith<$Res> {
  factory $DeleteCardDtoCopyWith(
          DeleteCardDto value, $Res Function(DeleteCardDto) then) =
      _$DeleteCardDtoCopyWithImpl<$Res, DeleteCardDto>;
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class _$DeleteCardDtoCopyWithImpl<$Res, $Val extends DeleteCardDto>
    implements $DeleteCardDtoCopyWith<$Res> {
  _$DeleteCardDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteCardDtoImplCopyWith<$Res>
    implements $DeleteCardDtoCopyWith<$Res> {
  factory _$$DeleteCardDtoImplCopyWith(
          _$DeleteCardDtoImpl value, $Res Function(_$DeleteCardDtoImpl) then) =
      __$$DeleteCardDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class __$$DeleteCardDtoImplCopyWithImpl<$Res>
    extends _$DeleteCardDtoCopyWithImpl<$Res, _$DeleteCardDtoImpl>
    implements _$$DeleteCardDtoImplCopyWith<$Res> {
  __$$DeleteCardDtoImplCopyWithImpl(
      _$DeleteCardDtoImpl _value, $Res Function(_$DeleteCardDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$DeleteCardDtoImpl(
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
class _$DeleteCardDtoImpl implements _DeleteCardDto {
  const _$DeleteCardDtoImpl({required this.productId, required this.quantity});

  factory _$DeleteCardDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteCardDtoImplFromJson(json);

  @override
  final int productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'DeleteCardDto(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCardDtoImpl &&
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
  _$$DeleteCardDtoImplCopyWith<_$DeleteCardDtoImpl> get copyWith =>
      __$$DeleteCardDtoImplCopyWithImpl<_$DeleteCardDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteCardDtoImplToJson(
      this,
    );
  }
}

abstract class _DeleteCardDto implements DeleteCardDto {
  const factory _DeleteCardDto(
      {required final int productId,
      required final int quantity}) = _$DeleteCardDtoImpl;

  factory _DeleteCardDto.fromJson(Map<String, dynamic> json) =
      _$DeleteCardDtoImpl.fromJson;

  @override
  int get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCardDtoImplCopyWith<_$DeleteCardDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
