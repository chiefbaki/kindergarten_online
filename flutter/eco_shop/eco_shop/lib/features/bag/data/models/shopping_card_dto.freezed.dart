// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShoppingCardDto _$ShoppingCardDtoFromJson(Map<String, dynamic> json) {
  return _ShoppingCard.fromJson(json);
}

/// @nodoc
mixin _$ShoppingCardDto {
  List<String> get titles => throw _privateConstructorUsedError;
  List<int> get prices => throw _privateConstructorUsedError;
  List<int> get quantities => throw _privateConstructorUsedError;
  List<String> get imagePaths => throw _privateConstructorUsedError;
  int get sum => throw _privateConstructorUsedError;
  int get delivery => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCardDtoCopyWith<ShoppingCardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCardDtoCopyWith<$Res> {
  factory $ShoppingCardDtoCopyWith(
          ShoppingCardDto value, $Res Function(ShoppingCardDto) then) =
      _$ShoppingCardDtoCopyWithImpl<$Res, ShoppingCardDto>;
  @useResult
  $Res call(
      {List<String> titles,
      List<int> prices,
      List<int> quantities,
      List<String> imagePaths,
      int sum,
      int delivery,
      int total});
}

/// @nodoc
class _$ShoppingCardDtoCopyWithImpl<$Res, $Val extends ShoppingCardDto>
    implements $ShoppingCardDtoCopyWith<$Res> {
  _$ShoppingCardDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titles = null,
    Object? prices = null,
    Object? quantities = null,
    Object? imagePaths = null,
    Object? sum = null,
    Object? delivery = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      prices: null == prices
          ? _value.prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      quantities: null == quantities
          ? _value.quantities
          : quantities // ignore: cast_nullable_to_non_nullable
              as List<int>,
      imagePaths: null == imagePaths
          ? _value.imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoppingCardImplCopyWith<$Res>
    implements $ShoppingCardDtoCopyWith<$Res> {
  factory _$$ShoppingCardImplCopyWith(
          _$ShoppingCardImpl value, $Res Function(_$ShoppingCardImpl) then) =
      __$$ShoppingCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> titles,
      List<int> prices,
      List<int> quantities,
      List<String> imagePaths,
      int sum,
      int delivery,
      int total});
}

/// @nodoc
class __$$ShoppingCardImplCopyWithImpl<$Res>
    extends _$ShoppingCardDtoCopyWithImpl<$Res, _$ShoppingCardImpl>
    implements _$$ShoppingCardImplCopyWith<$Res> {
  __$$ShoppingCardImplCopyWithImpl(
      _$ShoppingCardImpl _value, $Res Function(_$ShoppingCardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titles = null,
    Object? prices = null,
    Object? quantities = null,
    Object? imagePaths = null,
    Object? sum = null,
    Object? delivery = null,
    Object? total = null,
  }) {
    return _then(_$ShoppingCardImpl(
      titles: null == titles
          ? _value._titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      prices: null == prices
          ? _value._prices
          : prices // ignore: cast_nullable_to_non_nullable
              as List<int>,
      quantities: null == quantities
          ? _value._quantities
          : quantities // ignore: cast_nullable_to_non_nullable
              as List<int>,
      imagePaths: null == imagePaths
          ? _value._imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      delivery: null == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoppingCardImpl with DiagnosticableTreeMixin implements _ShoppingCard {
  const _$ShoppingCardImpl(
      {required final List<String> titles,
      required final List<int> prices,
      required final List<int> quantities,
      required final List<String> imagePaths,
      required this.sum,
      required this.delivery,
      required this.total})
      : _titles = titles,
        _prices = prices,
        _quantities = quantities,
        _imagePaths = imagePaths;

  factory _$ShoppingCardImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingCardImplFromJson(json);

  final List<String> _titles;
  @override
  List<String> get titles {
    if (_titles is EqualUnmodifiableListView) return _titles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_titles);
  }

  final List<int> _prices;
  @override
  List<int> get prices {
    if (_prices is EqualUnmodifiableListView) return _prices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prices);
  }

  final List<int> _quantities;
  @override
  List<int> get quantities {
    if (_quantities is EqualUnmodifiableListView) return _quantities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quantities);
  }

  final List<String> _imagePaths;
  @override
  List<String> get imagePaths {
    if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePaths);
  }

  @override
  final int sum;
  @override
  final int delivery;
  @override
  final int total;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShoppingCardDto(titles: $titles, prices: $prices, quantities: $quantities, imagePaths: $imagePaths, sum: $sum, delivery: $delivery, total: $total)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShoppingCardDto'))
      ..add(DiagnosticsProperty('titles', titles))
      ..add(DiagnosticsProperty('prices', prices))
      ..add(DiagnosticsProperty('quantities', quantities))
      ..add(DiagnosticsProperty('imagePaths', imagePaths))
      ..add(DiagnosticsProperty('sum', sum))
      ..add(DiagnosticsProperty('delivery', delivery))
      ..add(DiagnosticsProperty('total', total));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingCardImpl &&
            const DeepCollectionEquality().equals(other._titles, _titles) &&
            const DeepCollectionEquality().equals(other._prices, _prices) &&
            const DeepCollectionEquality()
                .equals(other._quantities, _quantities) &&
            const DeepCollectionEquality()
                .equals(other._imagePaths, _imagePaths) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_titles),
      const DeepCollectionEquality().hash(_prices),
      const DeepCollectionEquality().hash(_quantities),
      const DeepCollectionEquality().hash(_imagePaths),
      sum,
      delivery,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingCardImplCopyWith<_$ShoppingCardImpl> get copyWith =>
      __$$ShoppingCardImplCopyWithImpl<_$ShoppingCardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingCardImplToJson(
      this,
    );
  }
}

abstract class _ShoppingCard implements ShoppingCardDto {
  const factory _ShoppingCard(
      {required final List<String> titles,
      required final List<int> prices,
      required final List<int> quantities,
      required final List<String> imagePaths,
      required final int sum,
      required final int delivery,
      required final int total}) = _$ShoppingCardImpl;

  factory _ShoppingCard.fromJson(Map<String, dynamic> json) =
      _$ShoppingCardImpl.fromJson;

  @override
  List<String> get titles;
  @override
  List<int> get prices;
  @override
  List<int> get quantities;
  @override
  List<String> get imagePaths;
  @override
  int get sum;
  @override
  int get delivery;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$ShoppingCardImplCopyWith<_$ShoppingCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
