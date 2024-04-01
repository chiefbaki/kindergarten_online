// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() loading,
    required TResult Function(List<ProductsDto> products) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function()? loading,
    TResult? Function(List<ProductsDto> products)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? loading,
    TResult Function(List<ProductsDto> products)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) inital,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsInitial value)? inital,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? inital,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductsInitialImplCopyWith<$Res> {
  factory _$$ProductsInitialImplCopyWith(_$ProductsInitialImpl value,
          $Res Function(_$ProductsInitialImpl) then) =
      __$$ProductsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsInitialImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsInitialImpl>
    implements _$$ProductsInitialImplCopyWith<$Res> {
  __$$ProductsInitialImplCopyWithImpl(
      _$ProductsInitialImpl _value, $Res Function(_$ProductsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsInitialImpl implements ProductsInitial {
  const _$ProductsInitialImpl();

  @override
  String toString() {
    return 'ProductsState.inital()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() loading,
    required TResult Function(List<ProductsDto> products) success,
    required TResult Function(String error) failure,
  }) {
    return inital();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function()? loading,
    TResult? Function(List<ProductsDto> products)? success,
    TResult? Function(String error)? failure,
  }) {
    return inital?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? loading,
    TResult Function(List<ProductsDto> products)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) inital,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsFailure value) failure,
  }) {
    return inital(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsInitial value)? inital,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsFailure value)? failure,
  }) {
    return inital?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? inital,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class ProductsInitial implements ProductsState {
  const factory ProductsInitial() = _$ProductsInitialImpl;
}

/// @nodoc
abstract class _$$ProductsLoadingImplCopyWith<$Res> {
  factory _$$ProductsLoadingImplCopyWith(_$ProductsLoadingImpl value,
          $Res Function(_$ProductsLoadingImpl) then) =
      __$$ProductsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsLoadingImpl>
    implements _$$ProductsLoadingImplCopyWith<$Res> {
  __$$ProductsLoadingImplCopyWithImpl(
      _$ProductsLoadingImpl _value, $Res Function(_$ProductsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductsLoadingImpl implements ProductsLoading {
  const _$ProductsLoadingImpl();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() loading,
    required TResult Function(List<ProductsDto> products) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function()? loading,
    TResult? Function(List<ProductsDto> products)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? loading,
    TResult Function(List<ProductsDto> products)? success,
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
    required TResult Function(ProductsInitial value) inital,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsInitial value)? inital,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? inital,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoading implements ProductsState {
  const factory ProductsLoading() = _$ProductsLoadingImpl;
}

/// @nodoc
abstract class _$$ProductsSuccessImplCopyWith<$Res> {
  factory _$$ProductsSuccessImplCopyWith(_$ProductsSuccessImpl value,
          $Res Function(_$ProductsSuccessImpl) then) =
      __$$ProductsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductsDto> products});
}

/// @nodoc
class __$$ProductsSuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsSuccessImpl>
    implements _$$ProductsSuccessImplCopyWith<$Res> {
  __$$ProductsSuccessImplCopyWithImpl(
      _$ProductsSuccessImpl _value, $Res Function(_$ProductsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsSuccessImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsDto>,
    ));
  }
}

/// @nodoc

class _$ProductsSuccessImpl implements ProductsSuccess {
  const _$ProductsSuccessImpl({required final List<ProductsDto> products})
      : _products = products;

  final List<ProductsDto> _products;
  @override
  List<ProductsDto> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSuccessImplCopyWith<_$ProductsSuccessImpl> get copyWith =>
      __$$ProductsSuccessImplCopyWithImpl<_$ProductsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() loading,
    required TResult Function(List<ProductsDto> products) success,
    required TResult Function(String error) failure,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function()? loading,
    TResult? Function(List<ProductsDto> products)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? loading,
    TResult Function(List<ProductsDto> products)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductsInitial value) inital,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsInitial value)? inital,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? inital,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProductsSuccess implements ProductsState {
  const factory ProductsSuccess({required final List<ProductsDto> products}) =
      _$ProductsSuccessImpl;

  List<ProductsDto> get products;
  @JsonKey(ignore: true)
  _$$ProductsSuccessImplCopyWith<_$ProductsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsFailureImplCopyWith<$Res> {
  factory _$$ProductsFailureImplCopyWith(_$ProductsFailureImpl value,
          $Res Function(_$ProductsFailureImpl) then) =
      __$$ProductsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProductsFailureImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsFailureImpl>
    implements _$$ProductsFailureImplCopyWith<$Res> {
  __$$ProductsFailureImplCopyWithImpl(
      _$ProductsFailureImpl _value, $Res Function(_$ProductsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductsFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsFailureImpl implements ProductsFailure {
  const _$ProductsFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ProductsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFailureImplCopyWith<_$ProductsFailureImpl> get copyWith =>
      __$$ProductsFailureImplCopyWithImpl<_$ProductsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inital,
    required TResult Function() loading,
    required TResult Function(List<ProductsDto> products) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inital,
    TResult? Function()? loading,
    TResult? Function(List<ProductsDto> products)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inital,
    TResult Function()? loading,
    TResult Function(List<ProductsDto> products)? success,
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
    required TResult Function(ProductsInitial value) inital,
    required TResult Function(ProductsLoading value) loading,
    required TResult Function(ProductsSuccess value) success,
    required TResult Function(ProductsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductsInitial value)? inital,
    TResult? Function(ProductsLoading value)? loading,
    TResult? Function(ProductsSuccess value)? success,
    TResult? Function(ProductsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductsInitial value)? inital,
    TResult Function(ProductsLoading value)? loading,
    TResult Function(ProductsSuccess value)? success,
    TResult Function(ProductsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProductsFailure implements ProductsState {
  const factory ProductsFailure({required final String error}) =
      _$ProductsFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ProductsFailureImplCopyWith<_$ProductsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
