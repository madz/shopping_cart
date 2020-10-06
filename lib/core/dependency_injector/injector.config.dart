// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

import '../cubits/cart/cart_cubit.dart';
import 'module_injector.dart';
import '../cubits/product/product_cubit.dart';
import '../repositories/product/product_repositories.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<CartCubit>(() => CartCubit());
  gh.lazySingleton<FirebaseFirestore>(() => injectableModule.firebaseFirestore);
  gh.lazySingleton<NumberFormat>(() => injectableModule.formatCurrency);
  gh.factory<ProductRepositories>(
      () => ProductRepositoriesImpl(get<FirebaseFirestore>()));
  final remoteConfig = await injectableModule.remoteConfig;
  gh.factory<RemoteConfig>(() => remoteConfig);
  gh.lazySingleton<ProductCubit>(
      () => ProductCubit(get<ProductRepositories>(), get<RemoteConfig>()));
  return get;
}

class _$InjectableModule extends InjectableModule {}
