// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEvent {
  String? get byName => throw _privateConstructorUsedError;
  String? get byCategory => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? byName, String? byCategory)
        getProductsByCatByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? byName, String? byCategory)?
        getProductsByCatByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? byName, String? byCategory)?
        getProductsByCatByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProductsByCatByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProducts value)? getProductsByCatByName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProductsByCatByName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsEventCopyWith<ProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
  @useResult
  $Res call({String? byName, String? byCategory});
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byName = freezed,
    Object? byCategory = freezed,
  }) {
    return _then(_value.copyWith(
      byName: freezed == byName
          ? _value.byName
          : byName // ignore: cast_nullable_to_non_nullable
              as String?,
      byCategory: freezed == byCategory
          ? _value.byCategory
          : byCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res>
    implements $ProductsEventCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? byName, String? byCategory});
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? byName = freezed,
    Object? byCategory = freezed,
  }) {
    return _then(_$GetProductsImpl(
      byName: freezed == byName
          ? _value.byName
          : byName // ignore: cast_nullable_to_non_nullable
              as String?,
      byCategory: freezed == byCategory
          ? _value.byCategory
          : byCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetProductsImpl implements GetProducts {
  const _$GetProductsImpl({this.byName, this.byCategory});

  @override
  final String? byName;
  @override
  final String? byCategory;

  @override
  String toString() {
    return 'ProductsEvent.getProductsByCatByName(byName: $byName, byCategory: $byCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsImpl &&
            (identical(other.byName, byName) || other.byName == byName) &&
            (identical(other.byCategory, byCategory) ||
                other.byCategory == byCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, byName, byCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      __$$GetProductsImplCopyWithImpl<_$GetProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? byName, String? byCategory)
        getProductsByCatByName,
  }) {
    return getProductsByCatByName(byName, byCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? byName, String? byCategory)?
        getProductsByCatByName,
  }) {
    return getProductsByCatByName?.call(byName, byCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? byName, String? byCategory)?
        getProductsByCatByName,
    required TResult orElse(),
  }) {
    if (getProductsByCatByName != null) {
      return getProductsByCatByName(byName, byCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProducts value) getProductsByCatByName,
  }) {
    return getProductsByCatByName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProducts value)? getProductsByCatByName,
  }) {
    return getProductsByCatByName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProducts value)? getProductsByCatByName,
    required TResult orElse(),
  }) {
    if (getProductsByCatByName != null) {
      return getProductsByCatByName(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements ProductsEvent {
  const factory GetProducts({final String? byName, final String? byCategory}) =
      _$GetProductsImpl;

  @override
  String? get byName;
  @override
  String? get byCategory;
  @override
  @JsonKey(ignore: true)
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
