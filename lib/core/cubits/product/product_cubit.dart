import 'package:algolia/algolia.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_cart/core/models/product/product_model.dart';
import 'package:shopping_cart/core/repositories/product/product_repositories.dart';
import 'package:shopping_cart/shared/constants/app_constants.dart';

part 'product_cubit.freezed.dart';
part 'product_state.dart';

@lazySingleton
class ProductCubit extends Cubit<ProductState> {
  final ProductRepositories _productRepositories;
  final RemoteConfig _remoteConfig;
  ProductCubit(
    this._productRepositories,
    this._remoteConfig,
  ) : super(ProductState.empty());

  getAllProducts() async {
    final List<ProductModel> listProducts =
        await _productRepositories.getAllProducts();

    emit(
      ProductState.success(listProducts: listProducts, info: 'Success'),
    );
  }

  searchProduct(String searchText) async {
    await _remoteConfig.fetch();
    await _remoteConfig.activateFetched();

    String algoliaAppId = _remoteConfig.getString('algolia_app_id');
    String algoliaSearchApiKey =
        _remoteConfig.getString('algolia_search_api_key');

    Algolia algolia = Algolia.init(
      applicationId: algoliaAppId,
      apiKey: algoliaSearchApiKey,
    );

    AlgoliaQuery algoliaQuery = algolia.instance
        .index(AppConstants.ALGOLIA_PRODUCT_INDEX)
        .search('$searchText');

    final AlgoliaQuerySnapshot algoliaQuerySnapshot =
        await algoliaQuery.getObjects();

    List<AlgoliaObjectSnapshot> listAlgoliaObjectSnapshot = [];
    List<ProductModel> listProducts = [];

    if (algoliaQuerySnapshot != null) {
      listAlgoliaObjectSnapshot = algoliaQuerySnapshot.hits;
    }

    if (listAlgoliaObjectSnapshot.isNotEmpty) {
      for (final AlgoliaObjectSnapshot algoliaObjectSnapshot
          in listAlgoliaObjectSnapshot) {
        final ProductModel productModel =
            ProductModel.fromJson(algoliaObjectSnapshot.data);
        listProducts.add(productModel);
      }
    }

    print('listProducts length = ${listProducts.length}');

    emit(
      ProductState.success(listProducts: listProducts, info: 'Success'),
    );
  }
}
