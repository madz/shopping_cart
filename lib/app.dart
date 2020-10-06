import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart/core/cubits/cart/cart_cubit.dart';
import 'package:shopping_cart/core/cubits/product/product_cubit.dart';
import 'package:shopping_cart/core/dependency_injector/injector.dart';
import 'package:shopping_cart/features/home/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductCubit>(
          create: (BuildContext context) => getIt<ProductCubit>(),
        ),
        BlocProvider<CartCubit>(
          create: (BuildContext context) => getIt<CartCubit>(),
        ),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
