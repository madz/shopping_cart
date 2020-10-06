import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/core/cubits/cart/cart_cubit.dart';
import 'package:shopping_cart/core/models/product/product_model.dart';
import 'package:shopping_cart/shared/constants/app_constants.dart';
import 'package:shopping_cart/shared/widgets/product_card.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart"),
        backgroundColor: AppConstants.APP_PRIMARY_COLOR,
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              'Your Items',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            BlocBuilder<CartCubit, CartState>(
              builder: (_, cartState) {
                Map<int, ProductModel> mapProducts = cartState.mapProducts;

                return ListView(
                    shrinkWrap: true,
                    children: mapProducts.entries
                        .map((e) => ProductCard(productModel: e.value, isCartPage: true,))
                        .toList());
              },
            ),
          ],
        ),
      ),
    );
  }
}
