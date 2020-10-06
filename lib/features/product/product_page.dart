import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shopping_cart/core/dependency_injector/injector.dart';
import 'package:shopping_cart/core/models/product/product_model.dart';
import 'package:shopping_cart/shared/constants/app_constants.dart';

class ProductPage extends StatelessWidget {
  final ProductModel productModel;
  ProductPage({@required this.productModel});

  final NumberFormat formatCurrency = getIt<NumberFormat>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${productModel.name}"),
        backgroundColor: AppConstants.APP_PRIMARY_COLOR,
        leading: BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'About the Product',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                '${productModel.description}',
                textAlign: TextAlign.start,
              ),
              Image.network(
                "${productModel.imageUrl}",
              ),
              Divider(),
              Text(
                "Price: ${formatCurrency.format(productModel.price)}",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
