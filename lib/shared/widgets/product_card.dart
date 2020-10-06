import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shopping_cart/core/cubits/cart/cart_cubit.dart';
import 'package:shopping_cart/core/dependency_injector/injector.dart';
import 'package:shopping_cart/core/models/product/product_model.dart';
import 'package:shopping_cart/features/product/product_page.dart';
import 'package:shopping_cart/shared/constants/app_constants.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;

  /// check if the current page is a cart page
  final bool isCartPage;

  ProductCard({
    @required this.productModel,
    @required this.isCartPage,
  });

  final CartCubit _cartCubit = getIt<CartCubit>();
  final NumberFormat formatCurrency = getIt<NumberFormat>();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        isThreeLine: true,
        leading: Image.network(
          "${productModel.imageUrl}",
        ),
        title: Text("${productModel.name}"),
        subtitle: Text("Price: ${formatCurrency.format(productModel.price)}"),
        trailing: RaisedButton(
          color: isCartPage ? Colors.redAccent : AppConstants.APP_PRIMARY_COLOR,
          child: Text(
            isCartPage ? 'Remove Cart' : 'Add to Cart',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {
            if (isCartPage) {
              _cartCubit.removeProductToCart(
                productModel,
              );
            } else {
              _cartCubit.addProductToCart(
                productModel,
              );
            }
          },
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductPage(
                productModel: productModel,
              ),
              fullscreenDialog: true,
            ),
          );
        },
      ),
    );
  }
}
