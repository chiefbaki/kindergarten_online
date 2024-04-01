// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductsDto _$ProductsDtoFromJson(Map<String, dynamic> json) {
  return _ProductsDto.fromJson(json);
}

/// @nodoc
mixin _$ProductsDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsDtoCopyWith<ProductsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDtoCopyWith<$Res> {
  factory $ProductsDtoCopyWith(
          ProductsDto value, $Res Function(ProductsDto) then) =
      _$ProductsDtoCopyWithImpl<$Res, ProductsDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      String description,
      String category,
      int price,
      int quantity});
}

/// @nodoc
class _$ProductsDtoCopyWithImpl<$Res, $Val extends ProductsDto>
    implements $ProductsDtoCopyWith<$Res> {
  _$ProductsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsDtoImplCopyWith<$Res>
    implements $ProductsDtoCopyWith<$Res> {
  factory _$$ProductsDtoImplCopyWith(
          _$ProductsDtoImpl value, $Res Function(_$ProductsDtoImpl) then) =
      __$$ProductsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      String description,
      String category,
      int price,
      int quantity});
}

/// @nodoc
class __$$ProductsDtoImplCopyWithImpl<$Res>
    extends _$ProductsDtoCopyWithImpl<$Res, _$ProductsDtoImpl>
    implements _$$ProductsDtoImplCopyWith<$Res> {
  __$$ProductsDtoImplCopyWithImpl(
      _$ProductsDtoImpl _value, $Res Function(_$ProductsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? description = null,
    Object? category = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$ProductsDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
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
class _$ProductsDtoImpl extends _ProductsDto {
  const _$ProductsDtoImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.description,
      required this.category,
      required this.price,
      required this.quantity})
      : super._();

  factory _$ProductsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String description;
  @override
  final String category;
  @override
  final int price;
  @override
  final int quantity;

  @override
  String toString() {
    return 'ProductsDto(id: $id, name: $name, imageUrl: $imageUrl, description: $description, category: $category, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, imageUrl, description, category, price, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDtoImplCopyWith<_$ProductsDtoImpl> get copyWith =>
      __$$ProductsDtoImplCopyWithImpl<_$ProductsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductsDto extends ProductsDto {
  const factory _ProductsDto(
      {required final int id,
      required final String name,
      required final String imageUrl,
      required final String description,
      required final String category,
      required final int price,
      required final int quantity}) = _$ProductsDtoImpl;
  const _ProductsDto._() : super._();

  factory _ProductsDto.fromJson(Map<String, dynamic> json) =
      _$ProductsDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  String get description;
  @override
  String get category;
  @override
  int get price;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ProductsDtoImplCopyWith<_$ProductsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
