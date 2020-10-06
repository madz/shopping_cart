part of 'cart_cubit.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState({
    @required Map<int, ProductModel> mapProducts,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _CartState;

  factory CartState.empty() => CartState(
        mapProducts: {},
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory CartState.loading() => CartState(
        mapProducts: {},
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory CartState.failure({@required String info}) => CartState(
        mapProducts: {},
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory CartState.success(
          {@required Map<int, ProductModel> mapProducts,
          @required String info}) =>
      CartState(
        mapProducts: mapProducts,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
