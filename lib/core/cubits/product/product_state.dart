part of 'product_cubit.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @required List<ProductModel> listProducts,
    @required bool isSubmitting,
    @required bool isSuccess,
    @required bool isFailure,
    @required String info,
  }) = _ProductState;

  factory ProductState.empty() => ProductState(
        listProducts: [],
        isSubmitting: false,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ProductState.loading() => ProductState(
        listProducts: [],
        isSubmitting: true,
        isSuccess: false,
        isFailure: false,
        info: '',
      );

  factory ProductState.failure({@required String info}) => ProductState(
        listProducts: [],
        isSubmitting: false,
        isSuccess: false,
        isFailure: true,
        info: info,
      );

  factory ProductState.success(
          {@required List<ProductModel> listProducts, @required String info}) =>
      ProductState(
        listProducts: listProducts,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false,
        info: info,
      );
}
