// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CartStateTearOff {
  const _$CartStateTearOff();

// ignore: unused_element
  _CartState call(
      {@required Map<int, ProductModel> mapProducts,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _CartState(
      mapProducts: mapProducts,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $CartState = _$CartStateTearOff();

mixin _$CartState {
  Map<int, ProductModel> get mapProducts;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $CartStateCopyWith<CartState> get copyWith;
}

abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call(
      {Map<int, ProductModel> mapProducts,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object mapProducts = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      mapProducts: mapProducts == freezed
          ? _value.mapProducts
          : mapProducts as Map<int, ProductModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<int, ProductModel> mapProducts,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object mapProducts = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_CartState(
      mapProducts: mapProducts == freezed
          ? _value.mapProducts
          : mapProducts as Map<int, ProductModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_CartState implements _CartState {
  const _$_CartState(
      {@required this.mapProducts,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(mapProducts != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final Map<int, ProductModel> mapProducts;
  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool isFailure;
  @override
  final String info;

  @override
  String toString() {
    return 'CartState(mapProducts: $mapProducts, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.mapProducts, mapProducts) ||
                const DeepCollectionEquality()
                    .equals(other.mapProducts, mapProducts)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)) &&
            (identical(other.isFailure, isFailure) ||
                const DeepCollectionEquality()
                    .equals(other.isFailure, isFailure)) &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mapProducts) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {@required Map<int, ProductModel> mapProducts,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_CartState;

  @override
  Map<int, ProductModel> get mapProducts;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$CartStateCopyWith<_CartState> get copyWith;
}
