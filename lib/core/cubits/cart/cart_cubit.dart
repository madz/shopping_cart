import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/core/models/product/product_model.dart';

part 'cart_cubit.freezed.dart';
part 'cart_state.dart';

@lazySingleton
class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartState.empty());

  addProductToCart(ProductModel productModel) async {
    Map<int, ProductModel> newItems = Map.from(state.mapProducts);
    newItems.putIfAbsent(productModel.productId, () => productModel);
    emit(
      state.copyWith(
        mapProducts: newItems,
      ),
    );
  }

  removeProductToCart(ProductModel productModel) {
    Map<int, ProductModel> newItems = Map.from(state.mapProducts);
    newItems.remove(productModel.productId);
    emit(
      state.copyWith(
        mapProducts: newItems,
      ),
    );
  }
}
