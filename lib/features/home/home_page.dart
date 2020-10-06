import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/core/cubits/cart/cart_cubit.dart';
import 'package:shopping_cart/core/cubits/product/product_cubit.dart';
import 'package:shopping_cart/core/dependency_injector/injector.dart';
import 'package:shopping_cart/features/cart/cart_page.dart';
import 'package:shopping_cart/shared/constants/app_constants.dart';
import 'package:shopping_cart/shared/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ProductCubit _productCubit = getIt<ProductCubit>();

  @override
  void initState() {
    super.initState();
    _productCubit.getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: _SearchTextField(),
        backgroundColor: AppConstants.APP_PRIMARY_COLOR,
        actions: [
          BlocBuilder<CartCubit, CartState>(
            builder: (_, cartState) {
              return IconButton(
                icon: Badge(
                  badgeContent: Text("${cartState.mapProducts.length}"),
                  badgeColor: Colors.greenAccent,
                  child: Icon(Icons.shopping_cart),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(),
                      fullscreenDialog: true,
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (_, listProductState) {
          return ListView(
            children: listProductState.listProducts
                .map((e) => ProductCard(
                      productModel: e,
                      isCartPage: false,
                    ))
                .toList(),
          );
        },
      ),
    );
  }
}

class _SearchTextField extends StatefulWidget {
  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<_SearchTextField> {
  final TextEditingController _searchController = TextEditingController();
  final ProductCubit _productCubit = getIt<ProductCubit>();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      textInputAction: TextInputAction.search,
      onSubmitted: (searchText) {
        print('Searching... with text = $searchText');
        _productCubit.searchProduct(searchText);
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0XFFF7F7F8),
        hintText: 'Search',
        hintStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
          color: Color(0XFFB5B5B5),
        ),
        isDense: true,
        // Added this
        contentPadding: EdgeInsets.all(8),
        // Added this
        suffixIcon: IconButton(
          icon: Icon(
            Icons.clear,
            color: Colors.grey,
          ),
          onPressed: () {
            _searchController.clear();
            _productCubit.searchProduct('');
          },
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppConstants.APP_PRIMARY_COLOR),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
