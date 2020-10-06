// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProductStateTearOff {
  const _$ProductStateTearOff();

// ignore: unused_element
  _ProductState call(
      {@required List<ProductModel> listProducts,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) {
    return _ProductState(
      listProducts: listProducts,
      isSubmitting: isSubmitting,
      isSuccess: isSuccess,
      isFailure: isFailure,
      info: info,
    );
  }
}

// ignore: unused_element
const $ProductState = _$ProductStateTearOff();

mixin _$ProductState {
  List<ProductModel> get listProducts;
  bool get isSubmitting;
  bool get isSuccess;
  bool get isFailure;
  String get info;

  $ProductStateCopyWith<ProductState> get copyWith;
}

abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
  $Res call(
      {List<ProductModel> listProducts,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;

  @override
  $Res call({
    Object listProducts = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_value.copyWith(
      listProducts: listProducts == freezed
          ? _value.listProducts
          : listProducts as List<ProductModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

abstract class _$ProductStateCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ProductModel> listProducts,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String info});
}

class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;

  @override
  $Res call({
    Object listProducts = freezed,
    Object isSubmitting = freezed,
    Object isSuccess = freezed,
    Object isFailure = freezed,
    Object info = freezed,
  }) {
    return _then(_ProductState(
      listProducts: listProducts == freezed
          ? _value.listProducts
          : listProducts as List<ProductModel>,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      isSuccess: isSuccess == freezed ? _value.isSuccess : isSuccess as bool,
      isFailure: isFailure == freezed ? _value.isFailure : isFailure as bool,
      info: info == freezed ? _value.info : info as String,
    ));
  }
}

class _$_ProductState implements _ProductState {
  const _$_ProductState(
      {@required this.listProducts,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure,
      @required this.info})
      : assert(listProducts != null),
        assert(isSubmitting != null),
        assert(isSuccess != null),
        assert(isFailure != null),
        assert(info != null);

  @override
  final List<ProductModel> listProducts;
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
    return 'ProductState(listProducts: $listProducts, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductState &&
            (identical(other.listProducts, listProducts) ||
                const DeepCollectionEquality()
                    .equals(other.listProducts, listProducts)) &&
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
      const DeepCollectionEquality().hash(listProducts) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(isSuccess) ^
      const DeepCollectionEquality().hash(isFailure) ^
      const DeepCollectionEquality().hash(info);

  @override
  _$ProductStateCopyWith<_ProductState> get copyWith =>
      __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {@required List<ProductModel> listProducts,
      @required bool isSubmitting,
      @required bool isSuccess,
      @required bool isFailure,
      @required String info}) = _$_ProductState;

  @override
  List<ProductModel> get listProducts;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get info;
  @override
  _$ProductStateCopyWith<_ProductState> get copyWith;
}
